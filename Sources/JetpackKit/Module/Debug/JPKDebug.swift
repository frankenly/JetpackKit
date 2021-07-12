//
//  JPKDebug.swift
//  
//
//  Created by Trakarn Jamlongpaksakun on 12/7/2564 BE.
//

import Foundation

public class JPKDebug {
    
    public enum Mode {
        case LOG
        case ERROR
        case SUCCESS
        
        public var icon: String {
            switch self {
            case .LOG:
                return "⚪️"
            case .ERROR:
                return "🔴"
            case .SUCCESS:
                return "🟢"
            }
        }
    }
    
    public static func print( _ title: String, msg: String, mode: JPKDebug.Mode = .LOG) {
        if JPKConfigure.isDebug {
            Swift.print("\(mode.icon) \(Date().description(with: Locale.current)) - \(title) : \(msg)")
        }
    }
    
}
