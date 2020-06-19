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
    
   var controller: LoginViewController
    
    
    init(controller:LoginViewController) {
       self.controller = controller
       
        
            }
    
    func logAdmin ( name: String?, password: String?   )  {
        if (name == AppData.users[0].userName && password == AppData.users[0].password) {
            let navAdminController = getCurrentStoryboard(storyBoardID: "navID")
            controller.present(navAdminController, animated: true, completion: nil)
        }
    }
    
    func missLog (name: String?, password : String? ) {
        if (name != AppData.users[0].userName && password != AppData.users[0].userName) {
            controller.showError()
        }
    }
    
       
    }

   protocol LoginViewConnection {
    func showError ()

    
      }
     
        

    
    




 
/*  if userNameTextField.text == "" && passwordTextField.text == "" {
       let allertController = UIAlertController(title: "Ошибка", message: "Вы ввели неверный логин или пароль", preferredStyle: .actionSheet)
                      let actionAllert = UIAlertAction(title: "Ok", style: .default) { (action) in }
                      allertController.addAction(actionAllert)
       present(allertController, animated: true, completion: nil)*/



// var textF = vc.userNameTextField.text
 // vc.userNameTextField.text = textF
//  var pass = vc.passwordTextField.text
  
 // logg(name: textF ?? "", password: pass ?? "")


// создаем протокл в презентере подписываем вью на протокол
