//
//  File.swift
//  
//
//  Created by Trakarn Jamlongpaksakun on 12/10/2565 BE.
//

import Foundation
import UIKit

open class JPKBaseViewControllerNavigationOptions: JPKBaseRawViewControllerNavigationOptions { }

open class JPKBaseRawViewControllerNavigationOptions {
    public var title: String? = nil
    public var backgroundColor: UIColor = UIColor.white
    public var textColor: UIColor = UIColor.black
    public var isActive: Bool = true
    public var leftItems: [UIBarButtonItem] = []
    public var rightItems: [UIBarButtonItem] = []
    public var isLarge: Bool = false
    public var backColor: UIColor = UIColor.black
    public var radius: CGFloat = 0
}
