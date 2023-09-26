//
//  ViewController.swift
//  textValidationApp
//
//  Created by Tyler May on 9/22/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    
    let password = "ILove2Code!"
    var mylabel = "Please login"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.cornerRadius = 10
    }
    
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        guard let user = usernameTextField.text else {
            mylabel = "Something went wrong, please try again."
            label.textColor = .red
            label.text = mylabel
            return
        }
        guard let pass = passwordTextField.text else {
            mylabel = "Something went wrong, please try again."
            label.textColor = .red
            label.text = mylabel
            return
        }
        guard !user.isEmpty else {
            mylabel = "Username is required."
            label.textColor = .red
            label.text = mylabel
            return
        }
        if isValidEmail(email: user) {
            if pass == password {
                mylabel = "Login Successful"
                label.textColor = .green
                label.text = mylabel
            } else {
                mylabel = "Incorrect password. Please try again."
                label.textColor = .red
                label.text = mylabel
            }
        } else {
            mylabel = "Invalid email address. Please enter a valid email."
            label.textColor = .red
            label.text = mylabel
        }
    }
    
    func isValidEmail(email: String) -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailPredicate.evaluate(with: email)
    }
}
