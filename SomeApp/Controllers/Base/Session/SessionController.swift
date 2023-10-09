//
//  SessionController.swift
//  SomeApp
//
//  Created by mark berkov on 8.10.23.
//

import UIKit


class SessionController: BaseController {
    
    private let timerView: BaseInfoView = {
        let view = BaseInfoView()
        
        return view
    }()
}
    



extension SessionController {
    
    override func setupViews() {
        super.setupViews()
        
        view.setupView(timerView)
        
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            timerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            timerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            timerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            timerView.heightAnchor.constraint(equalToConstant: 300),
            
        ])
        
    }
    
    
    override func configureAppearance() {
        super.configureAppearance()
        
        title =  Resources.Strings.TabBar.title(for: .session)
        navigationController?.tabBarItem.title =  Resources.Strings.TabBar.title(for: .session)
        
        addNavBarButton(position: .left, with: Resources.Strings.NavBarButtons.left)
        addNavBarButton(position: .right, with: Resources.Strings.NavBarButtons.right)
        
        
    }
    
}

