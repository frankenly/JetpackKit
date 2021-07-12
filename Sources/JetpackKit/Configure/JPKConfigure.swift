//
//  JPKConfigure.swift
//  
//
//  Created by Trakarn Jamlongpaksakun on 12/7/2564 BE.
//

import Foundation
import UIKit

public class JPKConfigure {
    
    public static var navigationBar: JPKNavigationBarConfig = .init()
    
    public static var isDebug: Bool = true
    
}

public class JPKNavigationBarConfig {
    
    public var backText: String = "กลับ"
    public var backColor: UIColor = .blue
    public var titleText: String = ""
    public var backgroundMini: UIColor = .white
    public var titleMini: UIColor = .black
    public var titleLarge: UIColor = .black
    public var isLarge: Bool = true
    public var isShowLine: Bool = true
    
    public init(){}
    
}
