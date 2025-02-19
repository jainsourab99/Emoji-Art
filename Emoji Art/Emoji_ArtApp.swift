//
//  Emoji_ArtApp.swift
//  Emoji Art
//
//  Created by Sourabh Jain on 18/02/25.
//

import SwiftUI

@main
struct Emoji_ArtApp: App {
    @StateObject var defaultDocument = EmojiArtDocument()
    var body: some Scene {
        WindowGroup {
            EmojiArtDocumentView(document: defaultDocument)
        }
    }
}
