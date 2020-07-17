//
//  FirstControllerPresenter.swift
//  CTMobile-Routing
//
//  Created by Alan on 15.07.2020.
//  Copyright © 2020 Alan Temirov. All rights reserved.
//

import Foundation

class FirstControllerPresenter: FirstControllerPresenterProtocol, FirstControllerRouter {
    
    weak var view: FirstViewControllerProtocol!
    weak var transitionHandler: TransitionHandler!
    
    func didSelectItem(on index: IndexPath) {
        showDetail(with: "\(index.row)")
    }
    
}
