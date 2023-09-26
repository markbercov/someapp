//
//  OverviewController.swift
//  SomeApp
//
//  Created by mark berkov on 13.07.23.
//

import UIKit


class OverviewController: BaseController {
    
    
    private let navBar = OverviewNavBar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.overview
        
        addNavBarButton(position: .left, with: "LEFT BUTTON")
        addNavBarButton(position: .right, with: "RIGHT BITCH!")
    }
}


extension OverviewController {
    
    override func addViews() {
        super.addViews()
        view.addView(navBar)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            navBar.topAnchor.constraint(equalTo: view.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
        ])
    }
    
    
    override func configure() {
        super.configure()
        
        navigationController?.navigationBar.isHidden = true
       
        
    }
}

