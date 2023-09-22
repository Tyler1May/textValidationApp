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
    @IBOutlet weak var passwordTextField: UITextField!
    
    let password = "ILOVE2CODE!"
    var mylabel = "Please login"
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
            mylabel = "Something went wrong, please try again."
            label.textColor = .red
            label.text = mylabel
            return
        }
        guard pass == password else {
            mylabel = "Something went wrong, please try again."
            label.textColor = .red
            label.text = mylabel
            return
        }
        
        mylabel = "Login Succesfull"
        label.textColor = .green
        label.text = mylabel
        
    }
    
    
}

