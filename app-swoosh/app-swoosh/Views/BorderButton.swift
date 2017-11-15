//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Sonali Patel on 11/14/17.
//  Copyright © 2017 Sonali Patel. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        // method that will be called the moment our view controller becomes alive
        
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
