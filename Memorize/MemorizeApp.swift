//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Igor Silva on 8/9/20.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame(numberOfPairs: 3)
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: game)
        }
    }
}
