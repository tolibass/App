//
//  AppDate.swift
//  signIn
//
//  Created by Anatoliy on 14.06.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import Foundation
import UIKit

 struct AppData {
  static  var users : [UserProtocol] = [User(userName: "Admin", type: .Admin, id: 1, login: "Admin", password: "Admin"), User(userName: "Admin2", type: .Admin, id: 1, login: "Admin", password: "Admin"), User(userName: "Admin3", type: .Admin, id: 1, login: "Admin", password: "Admin")]
    
    
    
}

protocol  DBProtocol {
    
    func check ( login:String?, password: String? ) -> Bool 
    
    func addUser ( userName : String ,type: userType, id: Int, login: String, password : String   ) -> Bool
    
    func deleteUser (id : Int) -> Bool

}

