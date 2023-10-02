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
    
    enum Overview {
        static var allWorkoutsButton = "All Workouts"
    }
    
    enum TopColors {
        static var lacoste = UIColor(hexString: "#F38BA0")
        static var inactive = UIColor(hexString: "#437BFE")
        static var levis = UIColor(hexString: "#FF7878")
    }
    
    enum Strings {
        enum TabBar {
            static func title(for tab: Tabs) -> String {
                switch tab {
                case .overview: return "Overview"
                case .session: return "Session"
                case .progress: return "Progress"
                case .order: return "Order"
                case .any: return "Any"
               
                }
            }
        }
    }
    
    enum Images {
        enum TabBar {
            
            static var plus = UIImage(systemName: "plus.circle")
            
            static func icon(for tab: Tabs) -> UIImage? {
                
                switch tab {
                case .overview: return UIImage(systemName: "newspaper.fill")
                case .session: return UIImage(systemName: "tablecells.badge.ellipsis")
                case .progress: return UIImage(systemName: "camera.fill")
                case .order: return UIImage(systemName: "info.circle.fill")
                case .any: return UIImage(systemName: "minus.plus.batteryblock")
                
                }
            }
        }
        
        enum Common {
            static var allWorkoutsButton = UIImage(systemName: "lineweight")
        }
    }
    
    enum Fonts {
        static func helveticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
    
}
