//
//  ViewController.swift
//  signIn
//
//  Created by Anatoliy on 07.06.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, LoginViewConnection  {
    
    var presenter :LoginPresenter?
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        presenter = LoginPresenter( controller:  self )
        
     loginButton.layer.cornerRadius = 10
            loginButton.layer.borderWidth = 2.0
            loginButton.layer.borderColor = UIColor.black.cgColor
            loginButton.clipsToBounds = true
        
    }
  
    
    
    @IBAction func loginButtonAction(_ sender: Any) {
        
        presenter?.logAdmin(login: userNameTextField.text, password: passwordTextField.text)
        
       
    
            
        }
        

     
   func showError() {
          
  let errorAlert =  AlertBuilder.create(title: "Внимание" ,
                        message: "Вы ввели неверный логин или пароль",
        actions: [UIAlertAction(title: "Ok",
                                style: .default,
                                handler: nil)])
    present(errorAlert, animated: true, completion: nil)
      }
    
    
    func presentVC(_ controller : UIViewController) {
        present(controller, animated: true, completion: nil)
    }


}



//1) Класс с методом, который будет выводить алерт контроллер по строке используя дженерик 

