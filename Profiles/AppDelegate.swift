//
//  AppDelegate.swift
//  Profiles
//
//  Created by Nelida Velazquez on 3/30/18.
//  Copyright © 2018 Tolkiana. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        FIRApp.configure()
        return true
    }
}

