//
//  ChangeRolePresenter.swift
//  signIn
//
//  Created by Anatoliy on 29.06.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import Foundation


struct ChangeRolePresenter {
    
    var data : DBProtocol = Database()
    var controller : ChangeRoleProtocol
    
    init(controller: ChangeRoleProtocol) {
        self.controller = controller
    }
   
    func getRoleIdBy (index : Int) -> Int {
        let role = AppData.users[index].type
        switch role {
        case .Admin:
            return 0
        case .Manager:
            return 1
        case .Worker:
            return 2
        }
        
    }
    
    
    func updateUserRole (index : Int, role : userType)  {
        data.updateUserRole(role: role, id: index)
    }
    
    
}




protocol ChangeRoleProtocol {
   
}
