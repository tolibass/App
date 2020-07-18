//
//  UserModel.swift
//  signIn
//
//  Created by Anatoliy on 14.06.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import Foundation
import UIKit
import RealmSwift

protocol UserProtocol: Object {
    dynamic var userName : String? {get }
    dynamic var type : userType? {get set }
    dynamic var id : Int {get }
    dynamic var login : String? {get }
    dynamic var password : String? {get }
}

class User : Object, UserProtocol  {
    @objc dynamic var userName : String?
    dynamic var type : userType?
    @objc dynamic var id : Int = -1
    @objc dynamic var login: String?
    @objc dynamic var password: String?
    
    
    }

class WorkerUser : Object, UserProtocol {
    @objc dynamic var userName : String?
    dynamic var type : userType?
    @objc dynamic var id : Int = -1
    @objc dynamic var login: String?
    @objc dynamic var password: String?
    @objc dynamic var history : [String]?
}

    
enum userType: String {
    case Admin = "Admin"
    case Manager = "Manager"
    case Worker = "Worker"
}


