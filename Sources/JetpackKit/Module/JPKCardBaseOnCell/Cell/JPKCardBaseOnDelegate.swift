//
//  File.swift
//  
//
//  Created by Trakarn Jamlongpaksakun on 27/10/2564 BE.
//

import Foundation
import UIKit

public protocol JPKCardBaseOnDelegate: AnyObject {
    func updateCell() -> Void
}

public extension JPKCardBaseOnDelegate {
    public func updateCell() -> Void { }
}
