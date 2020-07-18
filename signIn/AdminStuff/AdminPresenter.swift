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

    private func removeUser ( id : Int, user: UserProtocol ) {
      let users = realmBD.objects(User.self).filter({id == $0.id})
           
       
          if let user = users.first {
           do {
               try realmBD.write() {
                   realmBD.delete(user)
               }
           } catch  {
               print(error)
           }
       }
       
        controller.updateUser()
    }
    var items : Results<User>!
    
    func createCell (tableView : UITableView, indexPath : IndexPath ) -> AdminTableViewCell {
        let cell : AdminTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell")! as! AdminTableViewCell
        let item = items[indexPath.row]
        cell.usernameLabel.text = item.login
        cell.roleLabel.text = item.type.map { $0.rawValue }
        
        
        return cell
    }
    

    
    
    func startDelete (id : Int) {
    let deleteAction = AlertBuilder.create(title: "Внимание",
                            message: "Вы действительно хотите удалить пользователя?",
                            actions: [(UIAlertAction(title: "Ok",
                                                     style: .default,
                                                     handler: {_ in  self.removeUser(id: id, user: User) })),
                                      (UIAlertAction(title: "No", style: .cancel, handler: nil))])
        controller.present(alertController: deleteAction)
    }


}

        
    

        
        

        protocol AdminPresenterViewProtocol {
    
    func present (alertController: UIAlertController)
    func updateUser () 
}
