//
//  FirstControllerProtocols.swift
//  CTMobile-Routing
//
//  Created by Alan on 15.07.2020.
//  Copyright © 2020 Alan Temirov. All rights reserved.
//

import Foundation

protocol FirstViewControllerProtocol: TransitionHandler {
    
    var presenter: FirstControllerPresenterProtocol! { get set }
    
}

protocol FirstControllerPresenterProtocol {
    
    var view: FirstViewControllerProtocol! { get set }
    
    func didSelectItem(on index: IndexPath)
    
}
