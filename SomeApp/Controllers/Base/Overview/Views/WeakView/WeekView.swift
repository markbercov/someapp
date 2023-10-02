//
//  WeakView.swift
//  SomeApp
//
//  Created by mark berkov on 28.09.23.
//

import UIKit

final class WeekView: BaseView {
    private var stackView = UIStackView()
    
    private let calendar = Calendar.current
    
}


extension WeekView {
    
    override func setupViews() {
        super.setupViews()
        addView(stackView)
       
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
        ])
    }
    
    
    override func configureAppearance() {
        super.configureAppearance()
        
        
        stackView.spacing = 7
        stackView.distribution = .fillEqually
       
        var weekDays = calendar.shortStandaloneWeekdaySymbols
        if calendar.firstWeekday == 1 {
            let sunDay =  weekDays.remove(at: 0)
            weekDays.append(sunDay)
        }
        weekDays.enumerated().forEach { index, name in
            let view = WeekDayView()
            view.configureDayView(with: index, and: name)
            stackView.addArrangedSubview(view)
        }
    }
    
}
