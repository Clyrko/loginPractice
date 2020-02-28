//
//  UIButtonExtension.swift
//  LoginPage
//
//  Created by Jay A. on 2/27/20.
//  Copyright © 2020 Jay A. All rights reserved.
//

import UIKit

extension UIButton {
    
    
    func borderedButton() {
        layer.borderWidth = 2
        layer.borderColor = UIColor.black.cgColor
        layer.cornerRadius = 10
        tintColor = Theme.Accent
    }
    
    func solidButton() {
        
        backgroundColor = Theme.Accent
        tintColor = UIColor.white
        layer.cornerRadius = 10
        tintColor = UIColor.white
        
    }
}
