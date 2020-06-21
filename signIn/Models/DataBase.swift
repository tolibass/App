//
//  DataBase.swift
//  signIn
//
//  Created by Anatoliy on 20.06.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import Foundation

struct Database : DBProtocol {
    
    
    func addUsers(userName: String, type: userType, id: Int, login: String, password: String) -> Bool {
        if checkUsersWithCurrentLogin(login: userName) { AppData.users.append(User(userName: userName, type: type, id: id, login: login, password: password))
        }
        return true
    }
    
    
    func check(login: String?, password: String?) -> Bool {
    
    
      return  AppData.users.filter({
         ($0.login == login && $0.password == password)
            }).count > 0
    }
    
    private func checkUsersWithCurrentLogin (login : String ) -> Bool  {
       return AppData.users.filter({$0.login == login}).count == 0}
    
    
    }
    
    











/*for item  in AppData.users.enumerated() {
         if (item.element.login == login && item.element.password == password) {
             return true
         }
     }*/

   /*  AppData.users.forEach({
         if ($0.login == login && $0.password == password) {
           
         }
         
         
     })
  return false
   */
