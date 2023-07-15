//
//  OverviewController.swift
//  SomeApp
//
//  Created by mark berkov on 13.07.23.
//

import UIKit


class OverviewController: BaseController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.feed
    }
}
