//
//  ViewController.swift
//  LoginApp
//
//  Created by Иван Элькин on 25.08.2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.username = usernameTextField.text
    }
    
    @IBAction func logInPressed() {
        if usernameTextField.text != User.username || passwordTextField.text != User.password {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                textField: passwordTextField
            )
        }
    }
    
    
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        usernameTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction func remindMyData(_ sender: UIButton) {
        sender.tag == 0
            ? showAlert(title: "Reminder", message: "Your name is \(User.username).")
            : showAlert(title: "Reminder", message: "Your password is \(User.password).")
    }
}

extension LoginViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
