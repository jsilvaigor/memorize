//
//  EmojiMemoryGameView.swift
//  Memorize
//
//  Created by Igor Silva on 8/9/20.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    var viewModel: EmojiMemoryGame
    let impactHeavy = UIImpactFeedbackGenerator(style: .heavy)
    let impactLigth = UIImpactFeedbackGenerator(style: .light)
    var body: some View {
        HStack {
            ForEach(viewModel.cards) { card in
                CardView(card: card)
                    .onTapGesture {
                        impactLigth.impactOccurred()
                        viewModel.chooseCard(card: card)
                    }
                    .onLongPressGesture {
                        impactHeavy.impactOccurred()
                        print("long preeeessss \(card)")
                    }
            }
        }
        .padding()
        .foregroundColor(.orange)
        .font(.largeTitle)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View {
        ZStack {
            if(card.isFaceUp){
                RoundedRectangle(cornerRadius: 10.0)
                    .fill()
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 10.0)
                    .stroke(lineWidth: 3.0)
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: 10.0)
                    .fill()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiMemoryGameView(viewModel: EmojiMemoryGame(numberOfPairs: 3))
    }
}
