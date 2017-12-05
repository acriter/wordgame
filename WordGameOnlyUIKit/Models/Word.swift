//
//  Word.swift
//  WordGame
//
//  Created by Colin Cowles on 12/1/17.
//  Copyright © 2017 Colin Cowles. All rights reserved.
//

import Foundation

class Word {
    var letters: [Letter]
    init(startingLetters: [Letter]) {
        self.letters = startingLetters;
    }
    
    func StringRepresentation() -> String {
        return ""
    }
}
