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
 // static  var users : [UserProtocol] = [User(userName: "Admin", type: .Admin, id: 1, login: "Admin", password: "Admin"), User(userName: "Admin2", type: .Admin, id: 2, login: "Admin", password: "Admin"), User(userName: "Admin3", type: .Admin, id: 3, login: "Admin", password: "Admin")]
    
    
    
}

protocol  DBProtocol {
    
    func check ( login:String?, password: String? ) -> Bool 
    
    func updateUserRole (role : userType, id : Int)
    
    func addUser ( user : UserProtocol ) -> Bool
    
    func deleteUser ( user : UserProtocol) -> Bool 


}

