//
//  Level.swift
//  WordGame
//
//  Created by Colin Cowles on 12/1/17.
//  Copyright © 2017 Colin Cowles. All rights reserved.
//

import Foundation

class Level {
    let bank: ShapeBank
    let startLetters: [Letter]
    init(bank: ShapeBank, startLetters: [Letter]) {
        self.bank = bank
        self.startLetters = startLetters
    }
}
