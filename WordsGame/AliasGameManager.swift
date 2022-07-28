//
//  AliasGameManager.swift
//  Alias
//
//  Created by Дмитрий Х on 28.07.22.
//

struct AliasGameManager {
    var score = 0
    
    private var currentRound = 1
    private var wordIndex = 0
    
    private var words: [Word]
    
    mutating func getNextWord() -> String {
        
        let word = words[wordIndex]
        
        if wordIndex == words.count - 1 {
            words.shuffle()
            wordIndex = 0
        }
        
        if currentRound % 4 == 0 {
            words.shuffle()
        }
        
        return word
    }
    
    mutating func nextRound() {
        currentRound += 1
    }
    
    mutating func scoreUp() {
        if words[wordIndex] == "ДЕЙСТВИЕ" {
            score += 3
        } else {
            score += 1
        }
        
        wordIndex += 1
    }
    
    mutating func scoreDown() {
        if words[wordIndex] == "ДЕЙСТВИЕ" {
            score -= 3
        } else {
            score -= 1
        }
        
        wordIndex += 1
    }
    
    static func getManagerWith(_ aliasWordsPack: AliasWordsPack) -> AliasGameManager {
        
        var words = aliasWordsPack.words
        let actionWordQTY = words.count / 15 // Слово ДЕЙСТВИЕ будет в 15 раз меньше чем остальных слов
        print(actionWordQTY)
        
        for _ in 0...actionWordQTY {
            words.append("ДЕЙСТВИЕ")
        }
        
        let aliasGameManager = AliasGameManager(words: words.shuffled())
        
        return aliasGameManager
    }
}
