//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Иван Элькин on 25.08.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeUserLabel: UILabel!
    @IBOutlet var logutButton: UIButton!
    
    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeUserLabel.text = "Welcome,\n \(User.name) \(User.surname)!"
    }
    
    
}
