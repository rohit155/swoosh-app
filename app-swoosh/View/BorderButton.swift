//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Rohit Jangid on 03/09/20.
//  Copyright © 2020 Rohit Jangid. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

//    override func awakeFromNib() {
//        super.awakeFromNib()
//        layer.borderWidth = 2.0
//        layer.borderColor = UIColor.white.cgColor
//    }
   
    override func draw(_ rect: CGRect) {
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
        layer.cornerRadius = 5
    }
}
