//
//  TabBarController.swift
//  SomeApp
//
//  Created by mark berkov on 8.07.23.
//

import UIKit

enum Tabs: Int {
    
    case feed
    case multi
    case camera
    case order
    case any
    
}

final class TabBarController: UITabBarController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func configure() {
        tabBar.tintColor = Resources.TopColors.levis
        tabBar.barTintColor = Resources.Colors.inactive
        tabBar.backgroundColor = .white
        tabBar.layer.borderColor = Resources.Colors.separator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        tabBar.unselectedItemTintColor = Resources.TopColors.inactive
        
        
        let feedController = OverviewController()
        let multiController = ProgressController()
        let cameraController = SessionController()
        let orderController = UIViewController()
        let anyController =  UIViewController()
//OverviewController()
        
        let feedNavigation = NavBarController(rootViewController: feedController)
        let multiNavigation = NavBarController(rootViewController: multiController)
        let cameraNavigation = NavBarController(rootViewController: cameraController)
        let orderNavigation = NavBarController(rootViewController: orderController)
        let anyNavigation = NavBarController(rootViewController: anyController)
        
        feedController.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.feed, image: Resources.Images.TabBar.feed, tag: Tabs.feed.rawValue)
        
        multiNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.multi, image: Resources.Images.TabBar.multi, tag: Tabs.multi.rawValue)
        
        cameraNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.camera, image: Resources.Images.TabBar.camera, tag: Tabs.camera.rawValue)
        
        orderNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.order, image: Resources.Images.TabBar.order, tag: Tabs.order.rawValue)
        
        anyNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.any, image: Resources.Images.TabBar.any, tag: Tabs.any.rawValue)
        
        setViewControllers([
            feedNavigation,
            multiNavigation,
            cameraNavigation,
            orderNavigation,
            anyNavigation
        ],animated: false)
        
    }
    
    
    
}
