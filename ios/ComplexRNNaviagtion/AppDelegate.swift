//
//  AppDelegate.swift
//  ComplexRNNaviagtion
//
//  Created by An, Sathyanarayana on 17/02/24.
//

import UIKit
import React

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    var bridge: RCTBridge!

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
//        loadReactNativeModule()
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
}


extension AppDelegate {
    
    func loadReactNativeModule() {
        let jsCodeLocation: URL
        jsCodeLocation = RCTBundleURLProvider.sharedSettings().jsBundleURL(forBundleRoot: "index", fallbackExtension: nil)
        let rootView = RCTRootView(bundleURL: jsCodeLocation, moduleName: "ComplexRNNaviagtion", initialProperties: nil)
        let rootViewController = ViewController()
        rootViewController.view = rootView
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = rootViewController
        self.window?.makeKeyAndVisible()
    }
}
