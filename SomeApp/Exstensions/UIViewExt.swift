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
}
