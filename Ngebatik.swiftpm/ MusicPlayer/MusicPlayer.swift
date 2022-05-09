//
//  File.swift
//  
//
//  Created by Farhandika on 16/04/22.
//

import Foundation
import AVFoundation

public class MusicPlayer {
    static let shared = MusicPlayer()
    var audioPlayer: AVAudioPlayer?
    var initPlayer: AVAudioPlayer?
    init() {
        self.setupInitialSound()
    }
    
    var initialAudioPlayer: AVAudioPlayer?
    public enum SoundType {
        case correct
        case alternate
        case end
        case wrong
        case next
        
        var path:String {
            switch self {
            case .correct :
                return "correct"
            case .alternate :
                return "correctAlternate"
            case .end :
                return  "endSound"
            case .wrong :
                return  "wrong"
            case .next :
                return "next"
            }
        }
        var ext:String {
            return "wav"
        }
    }
    
    private func setupInitialSound() {
        if let audioURL = Bundle.main.url(forResource: "gamelan", withExtension: "mp3") {
            do {
                try self.initPlayer = AVAudioPlayer(contentsOf: audioURL) /// make the audio player
                self.initPlayer?.numberOfLoops = -1 /// Number of times to loop the audio
            } catch {
                print("Couldn't play audio. Error: \(error)")
            }
        } else {
            print("No audio file found")
        }
    }
    
    func playInitialSound() {
        self.initPlayer?.play()
    }
    
    func stopInitialSound() {
        self.initPlayer?.stop()
    }
    
    func playSound(soundType:SoundType) {
        if let audioURL = Bundle.main.url(forResource: soundType.path, withExtension: soundType.ext) {
            do {
                try self.audioPlayer = AVAudioPlayer(contentsOf: audioURL) /// make the audio player
                self.audioPlayer?.numberOfLoops = 0 /// Number of times to loop the audio
                self.audioPlayer?.play() /// start playing
            } catch {
                print("Couldn't play audio. Error: \(error)")
            }
        } else {
            print("No audio file found")
        }
    }
}
