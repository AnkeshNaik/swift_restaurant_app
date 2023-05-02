//
//  restuarantApp.swift
//  restuarant

import SwiftUI

@main
struct restuarantApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            SplashScreenView()
        }
    }
}
