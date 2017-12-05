//
//  Letter.swift
//  WordGame
//
//  Created by Colin Cowles on 12/1/17.
//  Copyright © 2017 Colin Cowles. All rights reserved.
//

import Foundation

class Letter {
    var connectedLeft: Bool
    var connectedRight: Bool
    var shapes: [Shape]?
    var disabledPieces: [LetterPiece]?
    init(startingShapes: [Shape], startingDisabledPieces: [LetterPiece], connectedLeft: Bool, connectedRight: Bool) {
        self.shapes = startingShapes
        self.disabledPieces = startingDisabledPieces
        self.connectedLeft = connectedLeft
        self.connectedRight = connectedRight
    }
}
