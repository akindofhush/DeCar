//
//  ViewController.swift
//  Decar
//
//  Created by Tzu-Yen Huang on 2019/5/14.
//  Copyright © 2019年 Tzu-Yen Huang. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.delegate = self
        passwordTextField.delegate = self
        
    }
    @IBAction func signInHandler(_ sender: Any) {
        print("Hello world!")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}

