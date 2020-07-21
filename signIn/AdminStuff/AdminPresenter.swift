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
    
    
    var usersFromDB : [UserProtocol]?
    
   

    
    var controller : AdminPresenterViewProtocol
    var data : DBProtocol = Database()
    
    
    init( controller : AdminPresenterViewProtocol ) {
        self.controller = controller
        usersFromDB = data.getUsers()
        
    }
    
    func getUserCount () -> Int {
        return usersFromDB?.count ?? 0
    }
    

    private func removeUser ( user: UserProtocol ) {
        data.deleteUser(user: user)
           
       
       
        controller.updateUser()
    }
   
    
    func createCell (tableView : UITableView, indexPath : IndexPath ) -> AdminTableViewCell {
        let cell : AdminTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell")! as! AdminTableViewCell
        let item = usersFromDB![indexPath.row]
        cell.usernameLabel.text = item.login
        cell.roleLabel.text = item.type?.rawValue
        
        
        return cell
    }
    

    
    
    func startDelete (id : Int) {
    let deleteAction = AlertBuilder.create(title: "Внимание",
                            message: "Вы действительно хотите удалить пользователя?",
                            actions: [(UIAlertAction(title: "Ok",
                                                     style: .default,
                                                     handler: {_ in  self.removeUser( user: self.getUserById(id: id) ) })),
                                      (UIAlertAction(title: "No", style: .cancel, handler: nil))])
        controller.present(alertController: deleteAction)
    }
    
    func getUserById (id: Int) -> UserProtocol {
        return (usersFromDB?.filter({id == $0.id}).first)!
    }


}

        
    

        
        

        protocol AdminPresenterViewProtocol {
    
    func present (alertController: UIAlertController)
    func updateUser () 
}
