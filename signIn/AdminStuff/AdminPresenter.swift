//
//  AdminLoginPresenter.swift
//  signIn
//
//  Created by Anatoliy on 23.06.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import Foundation
import UIKit

struct AdminPresenter {
    
    
    
    var controller : AdminPresenterViewProtocol
    var data : DBProtocol = Database()
    
    
    init( controller : AdminPresenterViewProtocol ) {
        self.controller = controller
        
    }

    private func removeUser ( id : Int ) {
       AppData.users.removeAll(where: {id == $0.id })
        controller.updateUser()
    }
    
    func startDelete (id : Int) {
    let deleteAction = AlertBuilder.create(title: "Внимание",
                            message: "Вы действительно хотите удалить пользователя?",
                            actions: [(UIAlertAction(title: "Ok",
                                                    style: .default,
                                                    handler: { (alert) in
                                                        AppData.users.removeAll(where: {id == $0.id } )
                            })),
                                      (UIAlertAction(title: "No", style: .cancel, handler: nil))])
        controller.present(alertController: deleteAction)
    }


}


protocol AdminPresenterViewProtocol {
    
    func present (alertController: UIAlertController)
    func updateUser () 
}


