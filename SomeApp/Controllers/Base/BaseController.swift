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
       
        addViews()
        layoutViews()
        configure()
    }
    
    
}

@objc extension BaseController {
    func addViews(){}
    func layoutViews(){}
    func configure() {
        
        view.backgroundColor = .white
        
        
    }
    
    func navBarLefButtonHandler() {
        
        print("l")
        
    }
    
    func navBarRightButtonHandler() {
        
        print("r")
        
    }
}
    


extension BaseController {
    
    func addNavBarButton(position: NavBarPosition, with title: String) {
        
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(Resources.Colors.active, for: .normal)
        button.setTitleColor(Resources.Colors.inactive, for: .disabled)
        button.titleLabel?.font = Resources.Fonts.helveticaRegular(with: 17)
        
        switch position {
        case .left:
            button.addTarget(self, action: #selector(navBarLefButtonHandler), for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        case .right:
            button.addTarget(self, action: #selector(navBarRightButtonHandler), for: .touchUpInside)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
        }
    }
    
}
