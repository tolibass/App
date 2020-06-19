//
//  ViewController.swift
//  signIn
//
//  Created by Anatoliy on 07.06.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, LoginViewConnection  {
    func showError() {
        let alertController = UIAlertController(title: "Ошибка", message: "Вы ввели неверный логин или пароль", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alertController.addAction(action)
        present(alertController, animated: true, completion: nil)
        
    }
    
    
    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    var presenter :LoginPresenter?
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter = LoginPresenter(controller: self)
        
     loginButton.layer.cornerRadius = 10
            loginButton.layer.borderWidth = 2.0
            loginButton.layer.borderColor = UIColor.black.cgColor
            loginButton.clipsToBounds = true
        
    }
    
    
    
    
    
    
    @IBAction func loginButtonAction(_ sender: Any) {
        
        presenter?.logAdmin(name: userNameTextField.text, password: passwordTextField.text)
        
                presenter?.missLog(name: userNameTextField.text, password: passwordTextField.text)
            
            
        }
        
        
        
    
    
    
            
   



}
