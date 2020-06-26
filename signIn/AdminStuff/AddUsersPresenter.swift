//
//  File.swift
//  signIn
//
//  Created by Anatoliy on 25.06.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import Foundation


struct AddUsersPresenter {
    
   private var controller :AddUsersProtocol
    
    var data : DBProtocol = Database()
    
    init(controller: AddUsersProtocol) {
        self.controller = controller
    }
    
    func addUser(userName: String, type: userType, id: Int, login: String, password: String) {
        
        if data.addUser(userName: userName, type: type, id: id, login: login, password: password) {
            controller.userAdded()
        }
        
    }
    
    
    
}


protocol AddUsersProtocol {
    func showError ()
    func userAdded ()
}
