//
//  ViewController.swift
//  LoginPage
//
//  Created by Jay A. on 2/27/20.
//  Copyright © 2020 Jay A. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        styleSetUp()
    }

    func styleSetUp() {
        signUpButton.borderedButton()
        loginButton.solidButton()
        
    }

    @IBAction func signUpTouched(_ sender: UIButton) {
    }
    
    @IBAction func loginTouched(_ sender: UIButton) {
    }
}

