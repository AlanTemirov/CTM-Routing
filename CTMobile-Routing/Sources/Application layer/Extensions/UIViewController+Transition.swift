//
//  UIViewController+Transition.swift
//  CTMobile-Routing
//
//  Created by Alan on 17.07.2020.
//  Copyright © 2020 Alan Temirov. All rights reserved.
//

import UIKit

protocol TransitionHandler: AnyObject {
    
    func pushModule(with viewController: UIViewController, animated: Bool)
    
}

extension TransitionHandler where Self: UIViewController {
    
    func pushModule(with viewController: UIViewController, animated: Bool) {
        DispatchQueue.main.async {
            self.navigationController?.pushViewController(viewController, animated: animated)
        }
    }
    
}
