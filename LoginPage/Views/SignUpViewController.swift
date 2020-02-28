//
//  SignUpViewController.swift
//  LoginPage
//
//  Created by Jay A. on 2/27/20.
//  Copyright © 2020 Jay A. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var signUpWithAppleButton: UIButton!
    @IBOutlet weak var signUpWithGoogleButton: UIButton!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        styleSetUp()
    }
    

    func styleSetUp() {
        
        errorLabel.alpha = 0
        
        signUpButton.solidButton()
        signUpWithAppleButton.solidButton()
        signUpWithGoogleButton.solidButton()
        
        firstNameTextField.styleTextField()
        lastNameTextField.styleTextField()
        emailTextField.styleTextField()
        passwordTextField.styleTextField()
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func signUpTouched(_ sender: UIButton) {
    }
    
    @IBAction func signUpWithAppleTouched(_ sender: UIButton) {
    }
    
    @IBAction func signUpWithGoogleTouched(_ sender: UIButton) {
    }
    
}
