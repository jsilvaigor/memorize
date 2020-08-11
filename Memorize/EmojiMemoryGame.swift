//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Igor Silva on 8/9/20.
//

import SwiftUI

class EmojiMemoryGame {
    private var memoryGame: MemoryGame<String>
    
    // MARK: - Access to the Model
    var cards: Array<MemoryGame<String>.Card> {
        memoryGame.cards
    }
    
    init(numberOfPairs: Int) {
        memoryGame = EmojiMemoryGame.createMemoryGame(numberOfPairsOfCards: numberOfPairs)
    }
    
    // MARK: Intent(s)
    func chooseCard(card: MemoryGame<String>.Card){
        memoryGame.choose(card: card)
    }
    static func createMemoryGame(numberOfPairsOfCards: Int) -> MemoryGame<String> {
        let emojis: Array<String> = ["🤠", "😈", "🤡", "👽", "🦕"]
        return MemoryGame<String>(numberOfPairsOfCards: numberOfPairsOfCards){ pairIndex in emojis[pairIndex] }
    }
    

}
