//
//  UserModel.swift
//  signIn
//
//  Created by Anatoliy on 14.06.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import Foundation
import UIKit

protocol UserProtocol {
    var userName : String {get }
    var type : userType {get set }
    var id : Int {get }
    var login : String {get }
    var password : String {get }
}

struct User : UserProtocol {
    var userName : String
    var type : userType
    var id : Int
    var login: String
    var password: String
    
    
    }

struct WorkerUser : UserProtocol {
    var userName : String
    var type : userType
    var id : Int
    var login: String
    var password: String
    var history : [String]
}

    
enum userType {
case Admin
    case Manager
    case Worker
}
