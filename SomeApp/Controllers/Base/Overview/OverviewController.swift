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
      navigationController?.tabBarItem.title = Resources.Strings.TabBar.title(for: .overview)

        addNavBarButton(position: .left, with: "LEFT BUTTON")
        addNavBarButton(position: .right, with: "RIGHT BITCH!")
    }
}


extension OverviewController {
    
    override func setupViews() {
        super.setupViews()
        view.setupView(navBar)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            navBar.topAnchor.constraint(equalTo: view.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
        ])
    }
    
    
    override func configureAppearance() {
        super.configureAppearance()
        
        navigationController?.navigationBar.isHidden = true
       
        
    }
}

