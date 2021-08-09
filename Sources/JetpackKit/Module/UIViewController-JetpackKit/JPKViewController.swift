//
//  JPKViewController.swift
//  
//
//  Created by Trakarn Jamlongpaksakun on 9/8/2564 BE.
//

import Foundation
import UIKit

public class JPKViewController {
    
    static var instance: JPKViewController = JPKViewController()
    
    weak var viewController: UIViewController?
    
    init() {
        
    }
    
    /// Present and set nav controller
    public func present(
        rootViewController: UIViewController,
        modalPresentStyle: UIModalPresentationStyle? = nil,
        animated: Bool = true,
        completion: (() -> Void)?) -> Void {
        
        let nav = UINavigationController(rootViewController: rootViewController)
        if let modalStyle = modalPresentStyle {
            nav.modalPresentationStyle = modalStyle
        }
        
        viewController?.present(nav, animated: animated, completion: completion)
        
    }
    
}
