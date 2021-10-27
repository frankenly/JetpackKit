//
//  File.swift
//  
//
//  Created by Trakarn Jamlongpaksakun on 27/10/2564 BE.
//

import Foundation
import UIKit

protocol JPKCardBaseOnDelegate: AnyObject {
    func updateCell() -> Void
}

extension JPKCardBaseOnDelegate {
    public func updateCell() -> Void { }
}
