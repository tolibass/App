//
//  DataBase.swift
//  signIn
//
//  Created by Anatoliy on 20.06.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import Foundation
import RealmSwift

struct Database : DBProtocol {
    
        
    
    
    
        
    
    var realmDB : Realm = try! Realm()
    
    
    
    
    func addUser(user: UserProtocol) -> Bool {
        do {
            try realmDB.write() {
                realmDB.add(user)
            }
        } catch  {
            print (error)
        }
     return true
    }
    
    
    
    func deleteUser(user: UserProtocol) -> Bool {
        do {
            try realmDB.write() {
                realmDB.delete(user)
            }
        } catch  {
            print(error)
        }
        return true
    }
    
    
 
    
    func updateUserRole(role: userType, id: Int) {
        let users = realmDB.objects(User.self).filter({id == $0.id})
            
        do {
            if let user = users.first {
                try realmDB.write() {
                    user.type = role
                }
            }
        } catch  {
            print(error)
        }
        
    }
    
    
    
    
    
   // func deleteUser(id: Int) -> Bool {
     //   AppData.users.removeAll(where: {$0.id == id})
    //    return true
   // }
    
    
    
    /*func addUser(userName: String, type: userType, id: Int, login: String, password: String) -> Bool {
        if checkUsersWithCurrentLogin(login: login) { AppData.users.append(User(userName: userName, type: type, id: id, login: login, password: password))
        }
        return true
    }*/
    
    
    func check(login: String?, password: String?) -> Bool {
    
        return realmDB.objects(User.self).filter({
         ($0.login == login && $0.password == password)
            }).count > 0
        
        
        //return realmDB.objects(User.self).filter("login = \(login) && password = \(password)" ).count > 0
    }
    
    
    /*private func checkUsersWithCurrentLogin (login : String ) -> Bool  {
       return AppData.users.filter({$0.login == login}).count == 0}
    
    }*/
    
    











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


//
}
