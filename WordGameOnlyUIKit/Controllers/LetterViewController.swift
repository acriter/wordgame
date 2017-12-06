//
//  LetterViewController.swift
//  WordGameOnlyUIKit
//
//  Created by Colin Cowles on 12/6/17.
//  Copyright © 2017 Colin Cowles. All rights reserved.
//

import UIKit

class LetterViewController: UIViewController {

    var letterInfo: Letter
    
    init(letterInfo: Letter) {
        self.letterInfo = letterInfo
        super.init(nibName: "LetterViewController", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        assertionFailure("should only be initializing this controller with letter info")
        self.letterInfo = Letter(startingShapes: [Shape](), startingDisabledPieces: [LetterPiece](), connectedLeft: false, connectedRight: false)
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
