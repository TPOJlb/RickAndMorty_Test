//
//  AppDelegate.swift
//  RickAndMorty
//
//  Created by Muraviov Kyrylo on 30.03.2025.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        let screenRect = UIScreen.main.bounds
        window = UIWindow(frame: screenRect)
        
        if let window = self.window {
            let characterListVC = CharacterListViewController()
            let navController = UINavigationController(rootViewController: characterListVC)
            
            window.rootViewController = navController
            window.makeKeyAndVisible()
        }
        
        return true
    }
    
}
