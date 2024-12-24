// MARK: - AppDelegate.swift
// ------------------------

import UIKit
import os.log

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    // MARK: - Window
    var window: UIWindow?

    // MARK: - Logger
    private let logger = Logger(subsystem: "com.infinitumimagery.AvoidTheBan", category: "AppDelegate")

    // MARK: - didFinishLaunching
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        logger.log("didFinishLaunchingWithOptions called.")
        return true
    }

    // MARK: - applicationWillResignActive
    func applicationWillResignActive(_ application: UIApplication) {
        logger.log("applicationWillResignActive called.")
    }

    // MARK: - applicationDidEnterBackground
    func applicationDidEnterBackground(_ application: UIApplication) {
        logger.log("applicationDidEnterBackground called.")
    }

    // MARK: - applicationWillEnterForeground
    func applicationWillEnterForeground(_ application: UIApplication) {
        logger.log("applicationWillEnterForeground called.")
    }

    // MARK: - applicationDidBecomeActive
    func applicationDidBecomeActive(_ application: UIApplication) {
        logger.log("applicationDidBecomeActive called.")
    }

    // MARK: - applicationWillTerminate
    func applicationWillTerminate(_ application: UIApplication) {
        logger.log("applicationWillTerminate called.")
    }
}
