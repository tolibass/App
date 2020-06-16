//
//  ViewController.swift
//  signIn
//
//  Created by Anatoliy on 07.06.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import UIKit

// массив пользователей для входа 
var users = [(username: "Admin", password : "Admin"), (username: "Manager", password : "Manager123"), (username: "Worker", password : "Worker123") ]

class ViewController: UIViewController {
    
    let userNameTextField = UITextField()
    let passwordTextField = UITextField()
    let logInButton = UIButton(type: .roundedRect)
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.systemPink
        
        CreateLogTextField()
        createPasswordTextField()
        button()
        
    }
    
    
    
    
    
    // create log in textfield
    func CreateLogTextField () {
        self.userNameTextField.frame = CGRect(x: 80, y: 250, width: 250, height: 31)
        self.userNameTextField.placeholder = "Username"
        self.userNameTextField.backgroundColor = UIColor.white
        self.userNameTextField.clearButtonMode = .whileEditing
        self.userNameTextField.borderStyle = .roundedRect
        view.addSubview(userNameTextField)
    }
    
    // create password textfield
    func createPasswordTextField () {
        self.passwordTextField.frame = CGRect(x: 80, y: 300, width: 250, height: 31)
        self.passwordTextField.placeholder = "Password:"
        self.passwordTextField.backgroundColor = UIColor.white
        self.passwordTextField.isSecureTextEntry = true
        self.passwordTextField.clearButtonMode = .whileEditing
        self.passwordTextField.borderStyle = .roundedRect
        view.addSubview(passwordTextField)
    }
    // create button
    func button () {
        self.logInButton.frame = CGRect (x: 100, y: 550, width: 200, height: 100)
        self.logInButton.setTitle("Войти", for: .normal)
        self.logInButton.backgroundColor = UIColor.systemTeal
        self.logInButton.setTitleColor(.white, for: .normal)
        self.view.addSubview(logInButton)
        self.logInButton.addTarget(self, action: #selector(logIn(buton:)), for: .touchUpInside)
    }
    
    // кнопка входа пользователя 
    @objc func logIn ( buton : Any ) {
        
        // переход в панель Администратора
        if userNameTextField.text == users[0].username && passwordTextField.text == users[0].password {
            
            //Связь вью сториборда с классом Админа
           let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let AdminVC = storyboard.instantiateViewController(withIdentifier: "AdminStoryboardVC")
            AdminVC.modalPresentationStyle = .overCurrentContext
            AdminVC.modalTransitionStyle = .crossDissolve
            // создание навигешен контроллера в Админ панеле 
            let navController = storyboard.instantiateViewController(identifier: "navID")
            self.show(navController, sender: buton)
            
            //self.present(navController, animated: true, completion: nil)
            

            userNameTextField.text = nil
            passwordTextField.text = nil
          
        }
        
        // переход в панель манагера
        
        else if userNameTextField.text == users[1].username && passwordTextField.text == users[1].password {
        let managerVC = ManagerViewController()
            managerVC.modalTransitionStyle = .crossDissolve
            managerVC.modalPresentationStyle = .overCurrentContext
            
            self.present(managerVC, animated: true, completion: nil)
        }
        
        // переход в панель работника
        else if userNameTextField.text == users[2].username && passwordTextField.text == users[2].password {
            let workerVC = WorkerViewController()
        workerVC.modalTransitionStyle = .crossDissolve
        workerVC.modalPresentationStyle = .overCurrentContext
            self.present(workerVC, animated: true, completion: nil)
            
                
            // алерт контроллер для случая неверного ввода данных
            }
            else {
                let allertController = UIAlertController(title: "Ошибка", message: "Вы ввели неверный логин или пароль", preferredStyle: .actionSheet)
                let actionAllert = UIAlertAction(title: "Ok", style: .default) { (action) in }
                allertController.addAction(actionAllert)
                present(allertController, animated: true, completion: nil)
            passwordTextField.text = nil
        }
    }

}

