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
    
    func addUser(user : UserProtocol) {
        
        
        if data.addUser(user: user) {
            controller.userAdded()
        }
        
    }
    
    
    
}


protocol AddUsersProtocol {
    func showError ()
    func userAdded ()
}
