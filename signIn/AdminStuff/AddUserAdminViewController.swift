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

class AddUserAdminViewController: UIViewController, AddUsersProtocol {
   
    

    @IBOutlet weak var AddingUsernameLabel: UILabel!
    @IBOutlet weak var AddingUsernameTextField: UITextField!
    @IBOutlet weak var AddingPasswordLabel: UILabel!
    @IBOutlet weak var AddingPasswordTextField: UITextField!
    @IBOutlet weak var userTypeSegment: UISegmentedControl!
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var SaveInformationButton: UIButton!
    
    
    var presenter : AddUsersPresenter?
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        presenter = AddUsersPresenter(controller: self)
    
        
        
        
        SaveInformationButton.layer.cornerRadius = 10
        SaveInformationButton.layer.borderWidth = 2.0
        SaveInformationButton.layer.borderColor = UIColor.black.cgColor
        SaveInformationButton.clipsToBounds = true
        
        
        
    }
    

    
    
    @IBAction func selectedTypeAction(_ sender: UISegmentedControl) {
        
        
       
        }
    
    
    
    
    
    @IBAction func SaveInformationButtonAction(_ sender: Any) {
        var type : userType = .Admin
        switch userTypeSegment.selectedSegmentIndex {
        case 0:
            type = .Admin
            case 1:
            type = .Manager
            case 2:
            type = .Worker
        default:
            break
        }
        
        presenter!.addUser(userName: AddingUsernameTextField.text!, type: type, id: Int(idTextField.text!)!, login: loginTextField.text!, password: AddingUsernameTextField.text!)
        
    
        
    }
    

    func showError() {
           
        
        
       }
       
       func userAdded() {
        self.navigationController?.popViewController(animated: true)
       }
   
    enum error : String {
        case missUsername = "Вы не ввели имя пользователя"
        case missLogin = "Вы ввели неверный логин"
        case missPassword = "Вы не ввели  пароль"
    }
    
}


