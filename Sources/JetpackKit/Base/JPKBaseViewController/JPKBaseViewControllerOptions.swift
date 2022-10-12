//
//  File.swift
//  
//
//  Created by Trakarn Jamlongpaksakun on 12/10/2565 BE.
//

import Foundation
import UIKit

open class JPKBaseViewControllerOptions: JPKBaseRawViewControllerOptions { }

open class JPKBaseRawViewControllerOptions {
    
    public var navigation: JPKBaseViewControllerNavigationOptions = .init()
    
    public var backgroundColor: UIColor!
    
    public init(){
        self.defaultData()
    }
    
    open func defaultData() {
        
    }
    
}
