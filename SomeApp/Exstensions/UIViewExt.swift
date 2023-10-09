//
//  UIViewExt.swift
//  SomeApp
//
//  Created by mark berkov on 13.07.23.
//

import UIKit

extension UIView {
    func addBottomBorder(with color: UIColor, heigth: CGFloat) {
        let separator = UIView()
        separator.backgroundColor = color
        separator.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        separator.frame = CGRect(x: 0, y: frame.height - heigth, width: frame.width, height: heigth)
        addSubview(separator)
    }
    
    func makeSystem(_ button: UIButton) {
        
        button.addTarget(self, action: #selector(handleIn), for: [
            .touchDown,
            .touchUpInside
        ])
        button.addTarget(self, action: #selector(handleOut), for: [
            .touchDragOutside,
            .touchUpInside,
            .touchUpOutside,
            .touchDragExit,
            .touchCancel
        ])
    }
    
    
    @objc func handleIn() {
        UIView.animate(withDuration: 0.15) {
            self.alpha = 0.45
        }
    }
    @objc func handleOut() {
        UIView.animate(withDuration: 0.15) {
            self.alpha = 1
        }
    }
    
    
    
    func setupView(_ view: UIView) {
        addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
    }
    
}




