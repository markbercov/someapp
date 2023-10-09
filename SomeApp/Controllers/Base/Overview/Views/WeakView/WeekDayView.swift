//
//  WeakDayView.swift
//  SomeApp
//
//  Created by mark berkov on 28.09.23.
//

import UIKit

extension WeekView{
    final class WeekDayView: BaseView {
        
       private let nameLabel = UILabel()
        private let dateLabel = UILabel()
        private let stackView = UIStackView()
        
        func configureDayView(with index: Int, and name: String) {
            let startOfWeek = Date().startOfWeek
            let currentDay = startOfWeek.agoForward(to: index)
            let day = Calendar.current.component(.day, from: currentDay)
            let isToday = currentDay.stripTime() == Date().stripTime()
            
            backgroundColor = isToday ? Resources.TopColors.levis : Resources.Colors.active
            
            nameLabel.text = name.uppercased()
            nameLabel.textColor = isToday ? .white : Resources.TopColors.lacoste
            
            dateLabel.text = "\(day)"
        }
        
    }
}

extension WeekView.WeekDayView {
    
    override func setupViews() {
        super.setupViews()
        setupView(stackView)
        
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(dateLabel)
       
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            
        ])
    }
    
    
    override func configureAppearance() {
        super.configureAppearance()
        
        layer.cornerRadius = 5
        layer.masksToBounds = true
        
        nameLabel.font = Resources.Fonts.helveticaRegular(with: 11)
        nameLabel.textAlignment = .center
        
        dateLabel.font = Resources.Fonts.helveticaRegular(with: 15)
        dateLabel.textAlignment = .center
        
        stackView.spacing = 3
        stackView.axis = .vertical
       
        
    }
    
}

