//
//  GameViewController.swift
//  WordGameOnlyUIKit
//
//  Created by Colin Cowles on 12/5/17.
//  Copyright © 2017 Colin Cowles. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var bankView: UIView!
    @IBOutlet weak var lettersView: UIView!
    
    var levelInfo: Level
    var bankViewController: BankViewController?
    var letterViewControllers: [LetterViewController]?
    
    init(levelInfo: Level) {
        self.levelInfo = levelInfo
        super.init(nibName: "GameViewController", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        assertionFailure("should only be initializing this controller with level info")
        self.levelInfo = Level(bank: ShapeBank(startingShapes: []), startLetters: [])
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpBankViewController()
        self.setUpLetters()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    private func setUpBankViewController() {
        let bvc = BankViewController(shapeBank: self.levelInfo.bank)
        //bvc.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        bvc.view.frame = self.bankView.bounds
        self.addChildViewController(bvc)
        self.bankView.addSubview(bvc.view)
        
        bvc.didMove(toParentViewController: self)
        self.bankViewController? = bvc
    }
    
    private func setUpLetters() {
        self.letterViewControllers = [LetterViewController]()
        for letter in self.levelInfo.startLetters {
             
        }
    }
}
