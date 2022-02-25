//
//  Page1.swift
//  Week 3 Homework App
//
//  Created by yiting zeng on 24/2/22.
//

import SwiftUI
import AVFoundation

let bundleAudio = [
    "1.wav",
    "2.wav",
    "3.wav"
];

func loadBundleAudio(_ fileName:String) -> AVAudioPlayer? {
    let path = Bundle.main.path(forResource: fileName, ofType:nil)!
    let url = URL(fileURLWithPath: path)
    do {
        return try AVAudioPlayer(contentsOf: url)
    } catch {
        print("loadBundleAudio error", error)
    }
    return nil
}

struct Page1: View {
    @State private var soundIndex = 0
    @State private var soundFile = bundleAudio[0]
    @State private var player: AVAudioPlayer? = nil
    var body: some View {
        TimelineView(.animation) { context in
            VStack {
                HStack {
                    Button("Play") {
                        print("Button Play")
                        player = loadBundleAudio(soundFile)
                        print("player", player as Any)
                        // Loop indefinitely
                        player?.numberOfLoops = -1
                        player?.play()
                    }
                    Button("Stop") {
                        print("Button Stop")
                        player?.stop()
                    }
                    Button("Next") {
                        soundIndex = (soundIndex+1) % bundleAudio.count
                        soundFile = bundleAudio[soundIndex];
                    }
                }
                Text("soundIndex \(soundIndex)")
                Text("soundFile \(soundFile)")
                if let player = player {
                    Text("duration " + String(format: "%.1f", player.duration))
                    Text("currentTime " + String(format: "%.1f", player.currentTime))
                }
            }
        }
    }
}

struct Page1_Previews: PreviewProvider {
    static var previews: some View {
        Page1()
    }
}
