//
//  LoginPresenter.swift
//  signIn
//
//  Created by Anatoliy on 14.06.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import Foundation
import UIKit


struct LoginPresenter {
    
    var vc: LoginViewController
    
    init(vc:LoginViewController) {
        self.vc = vc
        var textF = vc.userNameTextField.text
        self.vc.userNameTextField.text = textF
        var pass = vc.passwordTextField.text
        let adminvc = AdministratorViewController()
        
        func logg (){
            if textF == AppData.users[1].userName && pass == AppData.users[1].password {
                vc.present( adminvc, animated: true, completion: nil)
            }
        }
       
       
    
    
    }

   
        
}
    
    




 
/*  if userNameTextField.text == "" && passwordTextField.text == "" {
       let allertController = UIAlertController(title: "Ошибка", message: "Вы ввели неверный логин или пароль", preferredStyle: .actionSheet)
                      let actionAllert = UIAlertAction(title: "Ok", style: .default) { (action) in }
                      allertController.addAction(actionAllert)
       present(allertController, animated: true, completion: nil)*/
