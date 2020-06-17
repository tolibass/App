//
//  ViewController.swift
//  signIn
//
//  Created by Anatoliy on 07.06.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    var presenter :LoginPresenter?
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter = LoginPresenter(vc: self)
        
     loginButton.layer.cornerRadius = 10
            loginButton.layer.borderWidth = 2.0
            loginButton.layer.borderColor = UIColor.black.cgColor
            loginButton.clipsToBounds = true
        
    }
    
    
    
    
    
    
    @IBAction func loginButtonAction(_ sender: Any) {
        
       
        
    }
    
    
            
   

}


