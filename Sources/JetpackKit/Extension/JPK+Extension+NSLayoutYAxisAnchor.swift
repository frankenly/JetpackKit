//
//  JPK+Extension+NSLayoutYAxisAnchor.swift
//  
//
//  Created by Trakarn Jamlongpaksakun on 12/7/2564 BE.
//

import Foundation
import UIKit

public extension NSLayoutYAxisAnchor {
    
    private static var _myComputedProperty = [String:CGFloat?]()
    
    public func of(_ constrant: CGFloat) -> NSLayoutYAxisAnchor {
        let tmpAddress = String(format: "%p", unsafeBitCast(self, to: Int.self))
        NSLayoutYAxisAnchor._myComputedProperty[tmpAddress] = constrant
        return self
    }
    
    public func getConstrant() -> CGFloat? {
        let tmpAddress = String(format: "%p", unsafeBitCast(self, to: Int.self))
        let result = NSLayoutYAxisAnchor._myComputedProperty[tmpAddress] ?? 0.0
        NSLayoutYAxisAnchor._myComputedProperty.removeValue(forKey: tmpAddress)
        return result
    }
    
}
