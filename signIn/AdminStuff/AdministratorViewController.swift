//
//  AdministratorViewController.swift
//  signIn
//
//  Created by Anatoliy on 10.06.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import UIKit

class AdministratorViewController: UIViewController {
    
    
    
    @IBOutlet weak var AdmintableView: UITableView!
    
 
    @IBOutlet weak var LogOutButton: UIButton!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       
        

    }
    
    
    @IBAction func LogOutButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        
        
    }
    
   
    
}


