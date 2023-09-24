//
//  Resources.swift
//  SomeApp
//
//  Created by mark berkov on 8.07.23.
//

import UIKit


enum Resources {
    
    enum Colors {
        
        static var active = UIColor(hexString: "#437BFE")
        static var inactive = UIColor(hexString: "#929DA5")
        static var separator = UIColor(hexString: "#E8ECEF")
        
        static var titleGray = UIColor(hexString: "#545C77")
        
    }
    
    enum TopColors {
        static var lacoste = UIColor(hexString: "#F38BA0")
        static var inactive = UIColor(hexString: "#437BFE")
        static var levis = UIColor(hexString: "#FF7878")
    }
    
    enum Strings {
        enum TabBar {
            static var overview = "Overview"
            static var session = "Session"
            static var progress = "Progress"
            static var order = "Order"
            static var any = "Any"
        }
    }
    
    enum Images {
        enum TabBar {
            static var overview = UIImage(systemName: "newspaper.fill")
            static var session = UIImage(systemName: "tablecells.badge.ellipsis")
            static var progress = UIImage(systemName: "camera.fill")
            static var order = UIImage(systemName: "info.circle.fill")
            static var any = UIImage(systemName: "minus.plus.batteryblock")
        }
    }
    
    enum Fonts {
        static func helveticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
    
}
