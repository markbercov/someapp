//
//  OverviewNavBar.swift
//  SomeApp
//
//  Created by mark berkov on 26.09.23.
//

import UIKit

final class OverviewNavBar: BaseView {
    private let allWorkoutsButton: WAButton = {
        let button = WAButton(with: .secondary)
        button.setTitle(title: Resources.Overview.allWorkoutsButton)
        return button
    }()
    private let addButton: UIButton = {
        let button = UIButton()
        button.setImage(Resources.Images.TabBar.plus, for: .normal)
        return button
    }()
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = Resources.Strings.TabBar.title(for: .overview)
        label.textColor = Resources.TopColors.levis
        label.font = Resources.Fonts.helveticaRegular(with: 22)
        return label
    }()
    
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
     
    }
}

