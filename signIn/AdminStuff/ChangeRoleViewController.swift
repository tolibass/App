//
//  ChangeRoleViewController.swift
//  signIn
//
//  Created by Anatoliy on 29.06.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import UIKit

class ChangeRoleViewController: UIViewController,ChangeRoleProtocol {
   
    
    var presenter : ChangeRolePresenter?
    var index : Int?
    
    
    
    
    @IBOutlet weak var changeRoleSegmentOutlet: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter = ChangeRolePresenter(controller: self)
       
        changeRoleSegmentOutlet.selectedSegmentIndex = (presenter?.getRoleIdBy(index: index!))!
    }
    
    
    
    
    @IBAction func changeRoleSegmentAction(_ sender: Any) {
        var type :userType = .Admin
        switch changeRoleSegmentOutlet.selectedSegmentIndex {
        case 0:
            type = .Admin
            case 1:
            type = .Manager
            case 2:
            type = .Worker
        default:
            break
        }
        presenter?.updateUserRole(index: index!, role: type)
    
        
    }
    
    
    
    
}
