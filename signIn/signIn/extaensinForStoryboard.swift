//
//  StoryBoard.swift
//  signIn
//
//  Created by Anatoliy on 18.06.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import UIKit

     
    
   public  func getCurrentStoryboard( storyBoardID : String) -> UIViewController    {
        let storiboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storiboard.instantiateViewController(identifier: storyBoardID)
        return controller
         
        
    }
   
