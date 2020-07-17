//
//  ViewControllerAssembly.swift
//  CTMobile-Routing
//
//  Created by Alan on 15.07.2020.
//  Copyright © 2020 Alan Temirov. All rights reserved.
//

import UIKit

class FirstControllerAssembly {
    
    func makeViewController() -> UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let viewController = storyboard.instantiateViewController(
            withIdentifier: "FirstViewController"
            ) as? FirstViewController else {
                fatalError()
        }
        
        let navigationController = UINavigationController(rootViewController: viewController)
        let presenter = FirstControllerPresenter()
        
        viewController.presenter = presenter
        
        presenter.transitionHandler = viewController
        
        return navigationController
    }
    
}
