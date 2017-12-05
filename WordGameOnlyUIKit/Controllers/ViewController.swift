//
//  ViewController.swift
//  WordGameOnlyUIKit
//
//  Created by Colin Cowles on 12/5/17.
//  Copyright © 2017 Colin Cowles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var startButton: UIButton!
    
    @IBAction func startButtonPressed(_ sender: Any) {
        
        let levelInfo: Level = Level(bank: ShapeBank(startingShapes: [Shape]()), startLetters: [Letter]())
        let gvc : GameViewController = GameViewController(levelInfo: levelInfo)
        self.present(gvc, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension UIViewController {
    class func loadFromNib<T: UIViewController>() -> T {
        return T(nibName: String(describing: self), bundle: nil)
    }
}

extension UIView {
    class func fromNib<T: UIView>() -> T {
        return Bundle.main.loadNibNamed(String(describing: T.self), owner: nil, options: nil)![0] as! T
    }
}
