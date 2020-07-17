//
//  FirstControllerRouter.swift
//  CTMobile-Routing
//
//  Created by Alan on 17.07.2020.
//  Copyright © 2020 Alan Temirov. All rights reserved.
//

import UIKit

protocol FirstControllerRouter: Router {
    
    func showDetail(with text: String)
    
}

extension FirstControllerRouter {
    
    func showDetail(with text: String) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondViewController = storyboard.instantiateViewController(
            identifier: "SecondViewController"
            ) as SecondViewController
        
        secondViewController.set(labelText: text)
        
        transitionHandler.pushModule(with: secondViewController, animated: true)
    }
    
}
