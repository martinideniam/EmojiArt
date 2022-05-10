//
//  EmojiArtDocument.swift
//  EmojiArt
//
//  Created by Vladislav Gorovenko on 10.05.2022.
//

import SwiftUI

//MARK: EmojiArtDocument is a view model

class EmojiArtDocument: ObservableObject {
    @Published private(set) var emojiArt: EmojiArtModel
    
    init() {
        emojiArt = EmojiArtModel()
    }
    
    var emojis: [EmojiArtModel.Emoji] { emojiArt.emojis }
    var background: EmojiArtModel.Background { emojiArt.background }
    
    //MARK: intent functions 👇🏻
    
    func setBackground(_ background: EmojiArtModel.Background) {
        emojiArt.background = background
    }
    
    func addEmoji(_ text: String, at location: (x: Int, y: Int), size: Int) {
        emojiArt.addEmoji(text, at: (x: location.x, y: location.y), size: size)
    }
    
    func moveEmoji(_ emoji: EmojiArtModel.Emoji, by offset: CGSize) {
        if let index = emojiArt.emojis.index(emoji) {
            emojiArt.emojis[index].x += Int(offset.width)
            emojiArt.emojis[index].y += Int(offset.height)
        }
    }
    
    func scaleEmoji(_ emoji: EmojiArtModel.Emoji, by scale: CGFloat) {
        if let index = emojiArt.emojis.index(emoji) {
            emojiArt.emojis[index].size = Int((CGFloat(emojiArt.emojis[index].size)*scale).rounded(.toNearestOrAwayFromZero))
        }
    }
}

