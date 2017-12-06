//
//  BankViewController.swift
//  WordGameOnlyUIKit
//
//  Created by Colin Cowles on 12/5/17.
//  Copyright © 2017 Colin Cowles. All rights reserved.
//

import UIKit

class BankViewController: UIViewController {

    var shapeBank: ShapeBank?
    
    init(shapeBank: ShapeBank) {
        self.shapeBank = shapeBank
        super.init(nibName: "BankViewController", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        assertionFailure("should only be initializing this controller with shape information")
        self.shapeBank = ShapeBank(startingShapes: [])
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
