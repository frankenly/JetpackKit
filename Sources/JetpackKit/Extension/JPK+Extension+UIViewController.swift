//
//  File.swift
//  
//
//  Created by Trakarn Jamlongpaksakun on 9/8/2564 BE.
//

import Foundation
import UIKit

public extension UIViewController {
    
    public var jpk: JPKViewController {
        return with(JPKViewController.instance) {
            $0.viewController = self
        }
    }
    
}
