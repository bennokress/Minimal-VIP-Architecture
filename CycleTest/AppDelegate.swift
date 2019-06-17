//
//  AppDelegate.swift
//  CycleTest
//
//  Created by Benno Kress on 24.03.18.
//  Copyright © 2018 bennokress. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        setupRootViewController()
        window?.makeKeyAndVisible()
        return true
    }

}

// MARK: - View Setup

extension AppDelegate {
    
    private func setupRootViewController() {
        let rootViewController: VIPViewController = MainViewController()
        // optionally do something with the root view controller:
        let exampleSetupData = VIPViewSetupData.main(someBoolValue: true)
        rootViewController.setup(with: exampleSetupData)
        window?.rootViewController = rootViewController
    }
    
}

