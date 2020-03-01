//
//  SignUpViewController.swift
//  LoginPage
//
//  Created by Jay A. on 2/27/20.
//  Copyright © 2020 Jay A. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase

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

    func validateFields() -> String? {
        
        // CHeck that all fields are filled in
        if firstNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            lastNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            passwordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            
            return "Please fill in all fields."
        }
        
        // Check if the password is secure
        
        let userPassword = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
       if Utilities.isPasswordValid(userPassword) == false {
            
            // Password is not secure
            
            return "Please make sure that your password is at least eight(8) characters, contains a special character (!@#$%^&*), and at least one(1) number."
        }
         
        
        return nil
    }

    @IBAction func signUpTouched(_ sender: UIButton) {
        
        // Validate fields
        
        let error = validateFields()
        
        if error != nil {
            
            // Show error message
            showErrorMessage(error!)
            
        } else {
            
            // Create Data
            
            let firstName = firstNameTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            
            let lastName = lastNameTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            
            let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            
            let password = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        // Create the user
        Auth.auth().createUser(withEmail: email, password: password) { (result, err) in
            // Check for errors
            
            if err != nil {
//                err?.localizedDescription
                
                // There was an error creating the user
                
                self.showErrorMessage("Error creating the user")
            } else {
                
    
                
                // User creation was successful. Store first & last name
                
                let db = Firestore.firestore()
                
                db.collection("users").addDocument(data: ["firstName":firstName, "lastName":lastName, "uid": result!.user.uid ]) { (error) in
                    
                    if error != nil {
                        
                        // Show error message
                        
                        self.showErrorMessage("User saving data error")
                    }
                }
                
                // Transition to the home screen
                
                self.transitionToMain()
            }
            }
        }
    }
    
    @IBAction func signUpWithAppleTouched(_ sender: UIButton) {
    }
    
    @IBAction func signUpWithGoogleTouched(_ sender: UIButton) {
    }
    
    func showErrorMessage(_ message:String) {
        
        errorLabel.text = message
        errorLabel.alpha = 1
    }
    
    
    func transitionToMain() {
        
        let homeViewController = storyboard?.instantiateViewController(identifier: Constants.Storyboard.homeViewController ) as? HomeViewController
        
        view.window?.rootViewController = homeViewController
        view.window?.makeKeyAndVisible()
        
    }
}
