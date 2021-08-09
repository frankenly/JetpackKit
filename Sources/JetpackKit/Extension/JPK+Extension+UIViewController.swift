//
//  File.swift
//  
//
//  Created by Trakarn Jamlongpaksakun on 9/8/2564 BE.
//

import Foundation
import UIKit

public extension UIViewController {
    
    /// Present and set nav controller
    public func present(
        rootViewController: UIViewController,
        modalPresentStyle: UIModalPresentationStyle? = nil,
        animated: Bool = true,
        completion: @escaping () -> Void) -> Void {
        
        let nav = UINavigationController(rootViewController: rootViewController)
        if let modalStyle = modalPresentStyle {
            nav.modalPresentationStyle = modalStyle
        }
        
        present(nav, animated: animated, completion: completion)
        
    }
    
}
