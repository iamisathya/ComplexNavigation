//
//  AppModule.swift
//  ComplexRNNaviagtion
//
//  Created by An, Sathyanarayana on 23/02/24.
//

import Foundation
import React
import ReactBridge

@ReactModule
class AppModule: NSObject, RCTBridgeModule {
  
    @ReactMethod
    @objc func toggleBottomTabBat(isHidden: Bool) {
        if let topVC = UIApplication.getTopViewController() {
            DispatchQueue.main.async {
                topVC.tabBarController?.tabBar.isHidden = isHidden
            }
        }
    }
}
