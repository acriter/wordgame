//
//  LetterView.swift
//  WordGameOnlyUIKit
//
//  Created by Colin Cowles on 12/6/17.
//  Copyright © 2017 Colin Cowles. All rights reserved.
//

import UIKit

class LetterView: UIView {
    
    @IBOutlet weak var testLabel: UILabel!
    @IBOutlet var contentView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        Bundle.main.loadNibNamed("LetterView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
}
