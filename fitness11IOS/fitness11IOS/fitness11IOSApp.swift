//
//  fitness11IOSApp.swift
//  fitness11IOS
//
//  Created by Vinith kumar Tatipally on 2021-12-23.
//

import SwiftUI
import Firebase

@main
struct fitness11IOSApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            Coach()
        }
    }
}
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions:
                   [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    FirebaseApp.configure()

    return true
  }
}
