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
    
   var controller: LoginViewConnection
    
    var data :DBProtocol = Database()
    
    init(controller:LoginViewConnection) {
        self.controller = controller
            }
    

    
    func logAdmin ( login: String?, password: String?   )  {
        if data.check(login: login, password: password) {
            let navAdminController = getCurrentStoryboard(storyBoardID: "navID")
            controller.presentVC(navAdminController)
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
    func presentVC (_ controller : UIViewController)
    
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
