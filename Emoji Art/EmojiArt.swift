//
//  EmojiArt.swift
//  Emoji Art
//
//  Created by Sourabh Jain on 18/02/25.
//

import Foundation

struct EmojiArt {
    var backGround: URL? = nil
    private(set) var emojis = [Emoji]()
    
    private var uniqueEmojiID = 0
    
    mutating func addEmoji(_ emoji: String, at position: Emoji.Position, size: Int) {
        uniqueEmojiID += 1
        emojis.append(
            Emoji(
                id: uniqueEmojiID,
                string: emoji,
                position: position,
                size: size
            )
        )
    }
    
    struct Emoji: Identifiable {
        var id: Int
        let string: String
        var position: Position
        var size: Int
        
        struct Position {
            var x: Int
            var y: Int
            static let zero = Self(x: 0, y: 0)
        }
    }
}
