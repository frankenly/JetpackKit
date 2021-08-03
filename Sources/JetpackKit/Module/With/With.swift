//
//    With.swift
//  
//
//    Created by Trakarn Jamlongpaksakun on 3/8/2564 BE.
//
//    DEMO
//    with(UIButton()) {
//        $0.translatesAutoresizingMaskIntoConstraints = false
//        $0.titleLabel?.text = title
//        $0.titleLabel?.font = .headline
//        $0.setTitleColor(.red, for: .normal)
//    }
//

import Foundation

@discardableResult
@inlinable
public func with<T:AnyObject>(_ value: T, _ mutate: ((_ v: T) -> Void)) -> T {
    mutate(value)
    return value
}
