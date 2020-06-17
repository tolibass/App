//
//  AddUserAdminViewController.swift
//  signIn
//
//  Created by Anatoliy on 13.06.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import UIKit


let storyboard = UIStoryboard(name: "Main", bundle: nil)
let AddUsersVC = storyboard.instantiateViewController(identifier: "AddingUsers")

class AddUserAdminViewController: UIViewController {

    
    @IBOutlet weak var AddingUsernameLabel: UILabel!
    
    @IBOutlet weak var AddingUsernameTextField: UITextField!
    
    @IBOutlet weak var AddingPasswordLabel: UILabel!
    
    @IBOutlet weak var AddingPasswordTextField: UITextField!
    
    
    @IBOutlet weak var SaveInformationButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        SaveInformationButton.layer.cornerRadius = 10
        SaveInformationButton.layer.borderWidth = 2.0
        SaveInformationButton.layer.borderColor = UIColor.black.cgColor
        SaveInformationButton.clipsToBounds = true
        
        
        
    }
    

    @IBAction func SaveInformationButtonAction(_ sender: Any) {
        
        
        
        
      
            
        
    }
    
}


