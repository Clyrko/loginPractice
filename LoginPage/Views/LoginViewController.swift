//
//  LoginViewController.swift
//  LoginPage
//
//  Created by Jay A. on 2/27/20.
//  Copyright © 2020 Jay A. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var loginWithAppleButton: UIButton!
    @IBOutlet weak var loginWithGoogleButton: UIButton!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        // Do any additional setup after loading the view.
        
        styleSetUp()
        
    }
    

    func styleSetUp() {
        
        errorLabel.alpha = 0
        
        emailTextField.styleTextField()
        passwordTextField.styleTextField()
        
        loginButton.solidButton()
        loginWithAppleButton.solidButton()
        loginWithGoogleButton.solidButton()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func loginTouched(_ sender: UIButton) {
    }
    
    @IBAction func loginWithAppleTouched(_ sender: UIButton) {
    }
    
    @IBAction func loginWithGoogleTouched(_ sender: UIButton) {
    }
    
}
