//
//  TabBarController.swift
//  SomeApp
//
//  Created by mark berkov on 8.07.23.
//

import UIKit

enum Tabs: Int, CaseIterable {
    
    case overview
    case session
    case progress
    case order
    case any
    //case plus
    
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
        
        
        let controllers: [NavBarController] = Tabs.allCases.map { tab in
            let controller = NavBarController(rootViewController: getController(for: tab))
            
            controller.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.title(for: tab), image: Resources.Images.TabBar.icon(for: tab), tag: tab.rawValue)
            return controller
        }
     
        

        
        setViewControllers(controllers,animated: false)
        
    }
    
    private func getController(for tabs: Tabs) -> BaseController {
        
        switch tabs {
        case .overview: return OverviewController()
        case .session: return SessionController()
        case .progress: return ProgressController()
        default: return BaseController()
        }
    }
    
}
