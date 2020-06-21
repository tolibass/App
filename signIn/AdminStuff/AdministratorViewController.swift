//
//  AdministratorViewController.swift
//  signIn
//
//  Created by Anatoliy on 10.06.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import UIKit



class AdministratorViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    
    @IBOutlet weak var AdmintableView: UITableView!
    
 
    @IBOutlet weak var LogOutButton: UIButton!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AdmintableView.delegate = self
        AdmintableView.dataSource = self
        

    }
    
    
    @IBAction func LogOutButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    

   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return AppData.users.count
   }
   
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell : AdminTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell")! as! AdminTableViewCell
    cell.usernameLabel.text = AppData.users[indexPath.row].userName
    cell.roleLabel.text = AppData.users[indexPath.row].type.rawValue
    cell.accessoryType = .detailButton
    return cell
   }
    
    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
    
    }
   
    
}




// добавить кнопку на ячейку По нажатию на которую вызывался алерт контроллер с вопросом действительно ли я хочу удалить пользовател (два варинта ответа )
