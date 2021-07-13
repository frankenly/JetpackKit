//
//  JPK+Extension+NSLayoutXAxisAnchor.swift.swift
//  
//
//  Created by Trakarn Jamlongpaksakun on 12/7/2564 BE.
//

import Foundation
import UIKit

public extension NSLayoutXAxisAnchor {
    
    private static var _myComputedProperty = [String:CGFloat?]()
    
    public func of(_ constrant: CGFloat) -> NSLayoutXAxisAnchor {
        let tmpAddress = String(format: "%p", unsafeBitCast(self, to: Int.self))
        NSLayoutXAxisAnchor._myComputedProperty[tmpAddress] = constrant
        return self
    }
    
    public func getConstrant() -> CGFloat? {
        let tmpAddress = String(format: "%p", unsafeBitCast(self, to: Int.self))
        let result = NSLayoutXAxisAnchor._myComputedProperty[tmpAddress] ?? 0.0
        NSLayoutXAxisAnchor._myComputedProperty.removeValue(forKey: tmpAddress)
        return result
    }
    
}
