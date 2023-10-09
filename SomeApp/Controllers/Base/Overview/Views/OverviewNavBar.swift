//
//  OverviewNavBar.swift
//  SomeApp
//
//  Created by mark berkov on 26.09.23.
//

import UIKit

final class OverviewNavBar: BaseView {
    private let allWorkoutsButton = SecondaryButton()
    private let addButton = UIButton()
    private let titleLabel = UILabel()
    
    private let weakView = WeekView()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        addBottomBorder(with: Resources.Colors.separator, heigth: 1)
    }
    
    func allWorkoutsButtonAction(_ action: Selector, with target: Any) {
        allWorkoutsButton.addTarget(target, action: action, for: .touchUpInside)
    }
    
    func addButtonAction(_ action: Selector, with target: Any) {
        addButton.addTarget(target, action: action, for: .touchUpInside)
    }
    
}

extension OverviewNavBar {
    override func setupViews() {
        super.setupViews()
        setupView(allWorkoutsButton)
        setupView(titleLabel)
        setupView(addButton)
        setupView(weakView)
    }
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
        
            addButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8),
            addButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            addButton.heightAnchor.constraint(equalToConstant: 28),
            addButton.widthAnchor.constraint(equalToConstant: 28),
            
            allWorkoutsButton.topAnchor.constraint(equalTo: addButton.topAnchor),
            allWorkoutsButton.trailingAnchor.constraint(equalTo: addButton.leadingAnchor, constant: -15),
            allWorkoutsButton.heightAnchor.constraint(equalToConstant: 28),
            allWorkoutsButton.widthAnchor.constraint(equalToConstant: 130),
            
            titleLabel.centerYAnchor.constraint(equalTo: allWorkoutsButton.centerYAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: allWorkoutsButton.leadingAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            
            weakView.topAnchor.constraint(equalTo: addButton.bottomAnchor, constant: 15),
            weakView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            weakView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            weakView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15),
            weakView.heightAnchor.constraint(equalToConstant: 47)
            
        ])
        
        
        
    }
    override func configureAppearance() {
        super.configureAppearance()
        backgroundColor = .white
        
     
       
     
        addButton.setImage(Resources.Images.TabBar.plus, for: .normal)
        
        
        
        
      
     //   titleLabel.text = Resources.Strings.TabBar.overview
        titleLabel.textColor = Resources.TopColors.levis
        titleLabel.font = Resources.Fonts.helveticaRegular(with: 22)
        
        
        
    
        allWorkoutsButton.setTitle(title: Resources.Overview.allWorkoutsButton)
        
        
    }
}

