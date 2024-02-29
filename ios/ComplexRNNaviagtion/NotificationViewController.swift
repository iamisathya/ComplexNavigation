//
//  NotificationViewController.swift
//  ComplexRNNaviagtion
//
//  Created by An, Sathyanarayana on 22/02/24.
//

import UIKit
import React

class NotificationViewController: UIViewController {
    var window: UIWindow?
    var bridge: RCTBridge!

    override func viewDidLoad() {
        super.viewDidLoad()
        loadReactNativeModule()
    }
    
    func loadReactNativeModule() {
        let jsCodeLocation: URL
        jsCodeLocation = RCTBundleURLProvider.sharedSettings().jsBundleURL(forBundleRoot: "index", fallbackExtension: nil)
        let rootView = RCTRootView(bundleURL: jsCodeLocation, moduleName: "ComplexRNNaviagtion", initialProperties: nil)
        rootView.frame = UIScreen.main.bounds
        self.view.addSubview(rootView)
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = self
        self.window?.makeKeyAndVisible()
    }
}
