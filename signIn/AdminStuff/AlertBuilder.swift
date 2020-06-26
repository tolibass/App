//
//  AlertBuilder.swift
//  signIn
//
//  Created by Anatoliy on 26.06.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import Foundation
import UIKit

struct AlertBuilder {
    
   
 static func create (title: String, message : String, actions: [UIAlertAction]) -> UIAlertController {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        for i in actions {
            alertController.addAction(i)
        }
        return alertController
    }
    
    
    
    //func createErrorAlertController () {
   //      let alertController = UIAlertController(title: "Ошибка", message: "Вы ввели неверный логин или пароль", preferredStyle: .alert)
   //     let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
    //    alertController.addAction(action)
    //    }
    
    
}
