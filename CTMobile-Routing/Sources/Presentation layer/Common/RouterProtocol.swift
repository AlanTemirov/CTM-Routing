//
//  RouterProtocol.swift
//  CTMobile-Routing
//
//  Created by Alan on 15.07.2020.
//  Copyright © 2020 Alan Temirov. All rights reserved.
//

protocol Router: AnyObject {
    
    var transitionHandler: TransitionHandler! { get }
    
}
