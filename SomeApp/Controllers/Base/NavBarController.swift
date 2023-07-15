//
//  NavBarController.swift
//  SomeApp
//
//  Created by mark berkov on 12.07.23.
//

import UIKit
final class NavBarController : UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    private func configure() {
        view.backgroundColor = .white
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [
            .foregroundColor: Resources.Colors.titleGray,
            .font: Resources.Fonts.helveticaRegular(with: 21)
        ]
        navigationBar.addBottomBorder(with: Resources.TopColors.lacoste, heigth: 11)
    
    }
}
