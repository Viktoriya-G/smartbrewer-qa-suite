//
//  SmartBrewerDemoAppApp.swift
//  SmartBrewerDemoApp
//

import SwiftUI

@main
struct SmartBrewerDemoAppApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    init() {
        UIDevice.current.setValue(UIInterfaceOrientation.portrait.rawValue, forKey: "orientation")
        AppDelegate.orientationLock = .portrait
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    AppDelegate.orientationLock = .portrait
                }
        }
    }
}
