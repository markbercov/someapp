//
//  SessionController.swift
//  SomeApp
//
//  Created by mark berkov on 15.07.23.
//

import UIKit


class SessionController: BaseController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "s"
      //  navigationController?.tabBarItem.title = Resources.Strings.TabBar.session
        addNavBarButton(position: .left, with: "SesLeft")
        addNavBarButton(position: .right, with: "Sesrig")
    }
}
