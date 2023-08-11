//
//  ProgressController.swift
//  SomeApp
//
//  Created by mark berkov on 15.07.23.
//


import UIKit


class ProgressController: BaseController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.multi
        addNavBarButton(position: .left, with: "pas")
        addNavBarButton(position: .right, with: "adsds")
    }
    
    override func navBarLefButtonHandler() {
        print("asdasfffff")
    }
}
