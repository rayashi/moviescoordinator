//
//  AppDelegate.swift
//  MovieCoordinator
//
//  Created by Alfian Losari on 16/05/19.
//  Copyright © 2019 Alfian Losari. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?
  var appCoordinator: AppCoordinator?
  
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
    let window = UIWindow(frame: UIScreen.main.bounds)
    let appCordinator = AppCoordinator(window: window, movies: Movie.dummyMovies)
    self.window = window
    self.appCoordinator = appCordinator
    
    appCordinator.start()
    
    return true
  }
  
  
}

