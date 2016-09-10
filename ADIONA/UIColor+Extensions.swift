//
//  UIColor+Extensions.swift
//  ADIONA
//
//  Created by Flatiron School on 9/10/16.
//  Copyright © 2016 Laticia Chance. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    class func fromRgbHex(fromHex: Int) -> UIColor {
        
        let red =   CGFloat((fromHex & 0xFF0000) >> 16) / 0xFF
        let green = CGFloat((fromHex & 0x00FF00) >> 8) / 0xFF
        let blue =  CGFloat(fromHex & 0x0000FF) / 0xFF
        let alpha = CGFloat(1.0)
        
        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
    
    class func adionaPurple() -> UIColor {
        
        let deepPurple = 0x87255B
        return UIColor.fromRgbHex(deepPurple)
    }
    
    class func adionaSecondaryPurple() -> UIColor {
        
        let mediumPurple = 0xB370B0
        return UIColor.fromRgbHex(mediumPurple)
    }
    
    class func adionaLightPurple() -> UIColor {
        
        let lavender = 0xD1C8E1
        return UIColor.fromRgbHex(lavender)
    }
}
