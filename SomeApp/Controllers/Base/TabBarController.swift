//
//  TabBarController.swift
//  SomeApp
//
//  Created by mark berkov on 8.07.23.
//

import UIKit

enum Tabs: Int {
    
    case overview
    case session
    case progress
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
        
        
        let overviewController = OverviewController()
        let sessionController = SessionController()
        let progressController = ProgressController()
        let orderController = UIViewController()
        let anyController =  UIViewController()
//OverviewController()
        
        let overviewNavigation = NavBarController(rootViewController: overviewController)
        let sessionNavigation = NavBarController(rootViewController: sessionController)
        let progressNavigation = NavBarController(rootViewController: progressController)
        let orderNavigation = NavBarController(rootViewController: orderController)
        let anyNavigation = NavBarController(rootViewController: anyController)
        
        
    //MARK:
 
        overviewNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.overview, image: Resources.Images.TabBar.overview, tag: Tabs.overview.rawValue)
        
        sessionNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.session, image: Resources.Images.TabBar.session, tag: Tabs.session.rawValue)
        
        progressNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.progress, image: Resources.Images.TabBar.progress, tag: Tabs.progress.rawValue)
        
        orderNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.order, image: Resources.Images.TabBar.order, tag: Tabs.order.rawValue)
        
        anyNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.any, image: Resources.Images.TabBar.any, tag: Tabs.any.rawValue)
        
        setViewControllers([
            overviewNavigation,
            sessionNavigation,
            progressNavigation,
            orderNavigation,
            anyNavigation
        ],animated: false)
        
    }
    
    
    
}
