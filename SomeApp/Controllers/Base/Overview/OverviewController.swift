//
//  OverviewController.swift
//  SomeApp
//
//  Created by mark berkov on 13.07.23.
//

import UIKit


class OverviewController: BaseController {
    
    private let allWorkoutsButton = SecondaryButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.overview
        
        addNavBarButton(position: .left, with: "LEFT BUTTON")
        addNavBarButton(position: .right, with: "RIGHT BITCH!")
    }
}


extension OverviewController {
    
    override func addViews() {
        view.addSubview(allWorkoutsButton)
    }
    
    
    override func layoutViews() {
        NSLayoutConstraint.activate([
            allWorkoutsButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            allWorkoutsButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            allWorkoutsButton.heightAnchor.constraint(equalToConstant: 28),
            allWorkoutsButton.widthAnchor.constraint(equalToConstant: 130)
        
        ])
    }
    
    
    override func configure() {
        allWorkoutsButton.translatesAutoresizingMaskIntoConstraints = false
        allWorkoutsButton.setTitle(title: Resources.Overview.allWorkoutsButton)
        allWorkoutsButton.addTarget(self, action: #selector(allWorkoutsButtonAction), for: .touchUpInside)
    }
}

@objc extension OverviewController {
    func allWorkoutsButtonAction() {
        print("tapped)(!!")
    }
}
