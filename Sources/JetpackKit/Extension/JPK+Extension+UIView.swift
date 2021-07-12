//
//  JPK+Extension+UIView.swift
//  
//
//  Created by Trakarn Jamlongpaksakun on 12/7/2564 BE.
//

import Foundation
import UIKit

public extension UIView {
    
    private static var _myComputedProperty = [String:JepackKitUtil?]()
    
    public var jpk: JepackKitUtil {
        let tmpAddress = String(format: "%p", unsafeBitCast(self, to: Int.self))
        if let obj = (UIView._myComputedProperty[tmpAddress] ?? nil) {
            return obj
        }else{
            let obj = JepackKitUtil(superView: self)
            UIView._myComputedProperty[tmpAddress] = obj
            return obj
        }
    }
    
}

