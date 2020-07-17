//
//  SceneDelegate.swift
//  CTMobile-Routing
//
//  Created by Alan on 14.07.2020.
//  Copyright © 2020 Alan Temirov. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else {
            return
        }
        
        let window = UIWindow(windowScene: windowScene)
        
        let assembly = FirstControllerAssembly()
        let initialViewController = assembly.makeViewController()
        
        window.rootViewController = initialViewController
        self.window = window
        window.makeKeyAndVisible()
    }
    
}

