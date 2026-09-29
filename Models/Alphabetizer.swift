//
//  Alphabetizer.swift
//  Alphabetizer
//
//  Created by Student1 on 29/09/2026.
//
//Brain of the app
import Foundation
//class bc the views that will share Alphabetizer need to use the same "brain"
@Observable //adds new functionality to a class
class Alphabetizer{
    private let tileCount = 3 //number of tiles
    private var vocab: Vocabulary
    var tiles = [Tile]() //holds the word tiles that the player drags around
    var score = 0 //number of tine the player has alphabetized a set of tiles
    var message: Message = .instructions
    
    //Vocabulary property declaration
    init(vocab: Vocabulary = .oceanAnimals){
        self.vocab = vocab
    }
    //Checks if tiles are in alphabetical order
    func submit(){
        // TODO: Implement submit
        score+=1
    }
    //MARK: private implementation
    
    //Updates 'tiles' with a new set of unalphabetized words
    private func startNewGane(){
        let newWords = vocab.selectRandomWords(count: tileCount)
        for word in newWords {
            tiles.append(Tile(word: word))
        }
    }
}
