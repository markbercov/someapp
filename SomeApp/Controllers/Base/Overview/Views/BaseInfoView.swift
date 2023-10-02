//
//  BaseInfoView.swift
//  SomeApp
//
//  Created by mark berkov on 29.09.23.
//

import UIKit

class BaseInfoView: BaseView {
    
    private var titleLabel: UILabel {
        let label = UILabel()
        label.font = Resources.Fonts.helveticaRegular(with: 13)
        label.textColor = Resources.Colors.inactive
        return label
    }
    private var contentView: UIView {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.borderColor = Resources.TopColors.levis.cgColor
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 5
        
        return view
        
    }
    
}

extension BaseInfoView {
    
   override func setupViews() {
        super.setupViews()
       
       
       
    }
    override func constraintViews() {
        super.constraintViews()
        
        
        
    }
    override func configureAppearance() {
        super.configureAppearance()
        
        backgroundColor = .clear
        
    }
    
    
}
