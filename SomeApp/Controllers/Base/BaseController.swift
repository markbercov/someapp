//
//  BaseController.swift
//  SomeApp
//
//  Created by mark berkov on 12.07.23.
//

import UIKit

enum NavBarPosition {
    case left, right
    
}

class BaseController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
   
}

@objc extension BaseController {
    func addViews(){}
    func layoutViews(){}
    func configure() {
        
        view.backgroundColor = .white
        
    }
    
}

extension BaseController {
    
    func addNavBarButton(position: NavBarPosition, with title: String) {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(Resources.Colors.active, for: .normal)
        button.setTitleColor(Resources.Colors.inactive, for: .disabled)
    }
    
}
