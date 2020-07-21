//
//  AdministratorViewController.swift
//  signIn
//
//  Created by Anatoliy on 10.06.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import UIKit



class AdministratorViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, AdminPresenterViewProtocol {
    
    
    
    
    @IBOutlet weak var AdmintableView: UITableView!
    @IBOutlet weak var LogOutButton: UIButton!

    
    var presenter :AdminPresenter?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        AdmintableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AdmintableView.delegate = self
        AdmintableView.dataSource = self
        
        presenter = AdminPresenter(controller: self)

    }
    
    
    @IBAction func LogOutButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    

   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return (presenter?.usersFromDB!.count)!
   
    }
   
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let returnCell = (presenter?.createCell(tableView: tableView, indexPath: indexPath))!
    returnCell.changeRoleButton.addTarget(self, action: #selector(changeRoleAction(sender:)), for: .touchUpInside)
    returnCell.changeRoleButton.tag = indexPath.row
    return returnCell
   }
    
    
    
   
   
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            presenter?.startDelete(id: (presenter?.usersFromDB![indexPath.row].id)! )
                
            
            
        }
    }
    
    @objc func changeRoleAction ( sender : UIButton  ) {
        let index = sender.tag
        let changeRoleVC = getCurrentStoryboard(storyBoardID: "changeRole") as! ChangeRoleViewController
        changeRoleVC.index = index
        show(changeRoleVC, sender: nil)
        
    }
    
    
    
  func present(alertController: UIAlertController) {
        present(alertController, animated: true, completion: nil)
    }
    
    func updateUser() {
        AdmintableView.reloadData()
        
    }
}






