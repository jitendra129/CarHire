//
//  AppDelegate.swift
//  CarHire
//
//  Created by ASK ONLINE  on 30/06/17.
//  Copyright © 2017 ASK ONLINE. All rights reserved.
//
let GRANT_TYPE:String = "client_credentials"
let CLIENT_ID:String = "testclient"
let CLIENT_SECRET:String = "testpass"
let SERVERURLPATH:String = "http://webdevelopmentreviews.net/carsgates/webservices/webservice/"
let IMAGESBASEURL:String = "http://webdevelopmentreviews.net/carrental/upload/"
let ACCESSTOKENURL:String = "http://webdevelopmentreviews.net/carsgates/webservices/"


import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    fileprivate func createMenuView() {
        
        // create viewController code...
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let mainViewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        let leftViewController = storyboard.instantiateViewController(withIdentifier: "LeftViewController") as! LeftViewController
        let rightViewController = storyboard.instantiateViewController(withIdentifier: "RightViewController") as! RightViewController
        
        let nvc: UINavigationController = UINavigationController(rootViewController: mainViewController)
        
       // UINavigationBar.appearance().tintColor = UIColor(hex: "689F38")
        
        leftViewController.mainViewController = nvc
        
        let slideMenuController = ExSlideMenuController(mainViewController:nvc, leftMenuViewController: leftViewController, rightMenuViewController: rightViewController)
        slideMenuController.automaticallyAdjustsScrollViewInsets = true
        slideMenuController.delegate = mainViewController
     //   self.window?.backgroundColor = UIColor(red: 236.0, green: 238.0, blue: 241.0, alpha: 1.0)
        self.window?.rootViewController = slideMenuController
        self.window?.makeKeyAndVisible()
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
       
//        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//       let  viewController = storyBoard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
//
//         //viewController = ViewController(nibName: nil, bundle:nil) //ViewController = Name of your controller
//        let navigationController = UINavigationController(rootViewController: viewController)
//        
//        self.window = UIWindow(frame: UIScreen.main.bounds)
//        self.window?.rootViewController = navigationController
//        self.window?.makeKeyAndVisible()
 self.createMenuView()
        return true
       
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

