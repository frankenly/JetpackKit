//
//  JepackKitUtil.swift
//  
//
//  Created by Trakarn Jamlongpaksakun on 12/7/2564 BE.
//

import Foundation
import UIKit

public class JepackKitUtil {
    
    weak var superView: UIView!
    
    public var constrants: JPKAnchorConstrant?
    
    public init(superView: UIView) {
        self.superView = superView
    }
    
    public func mapAnchor(top: NSLayoutYAxisAnchor? = nil, left: NSLayoutXAxisAnchor? = nil, bottom: NSLayoutYAxisAnchor? = nil, right: NSLayoutXAxisAnchor? = nil, widthConstant: CGFloat = 0, heightConstant: CGFloat = 0) -> JepackKitUtil {
        self.anchor(top: top, left: left, bottom: bottom, right: right, widthConstant: widthConstant, heightConstant: heightConstant)
        return self
    }
    
    public func anchor(top: NSLayoutYAxisAnchor? = nil, left: NSLayoutXAxisAnchor? = nil, bottom: NSLayoutYAxisAnchor? = nil, right: NSLayoutXAxisAnchor? = nil, widthConstant: CGFloat = 0, heightConstant: CGFloat = 0) -> Void {
        
        self.constrants = anchorConstrantPositionReturn(top,
                                                        left: left,
                                                        bottom: bottom,
                                                        right: right,
                                                        topConstant: top?.getConstrant() ?? 0,
                                                        leftConstant: left?.getConstrant() ?? 0,
                                                        bottomConstant: bottom?.getConstrant() ?? 0,
                                                        rightConstant: right?.getConstrant() ?? 0,
                                                        widthConstant: widthConstant,
                                                        heightConstant: heightConstant)
        
    }
    
    public func mapCenterX(with viewTarget: UIView) -> JepackKitUtil {
        self.centerX(with: viewTarget)
        return self
    }
    
    public func centerX(with viewTarget: UIView) {
        superView.centerXAnchor.constraint(equalTo: viewTarget.centerXAnchor).isActive = true
    }
    
    public func mapCenterY(with viewTarget: UIView) -> JepackKitUtil {
        self.centerY(with: viewTarget)
        return self
    }
    
    public func centerY(with viewTarget: UIView) {
        superView.centerYAnchor.constraint(equalTo: viewTarget.centerYAnchor).isActive = true
    }
    
    public func addSuperview(_ _superview: UIView) -> JepackKitUtil {
        _superview.addSubview(self.superView)
        return self
    }
    
    public func shadowFlatDesign(color: UIColor = UIColor.black, opacityShadow opacity: Float = 0.4, radius: CGFloat = 0, offset: CGSize = CGSize(width: 5, height: 5)){
        superView.layer.cornerRadius = radius
        superView.layer.shadowColor = color.cgColor
        superView.layer.shadowOffset = offset
        superView.layer.shadowOpacity = opacity
        superView.layer.shadowRadius = 5
        superView.layer.masksToBounds = false
    }
 
}

internal extension JepackKitUtil {
    private func anchorConstrantPositionReturn(_ top: NSLayoutYAxisAnchor? = nil, left: NSLayoutXAxisAnchor? = nil, bottom: NSLayoutYAxisAnchor? = nil, right: NSLayoutXAxisAnchor? = nil, topConstant: CGFloat = 0, leftConstant: CGFloat = 0, bottomConstant: CGFloat = 0, rightConstant: CGFloat = 0, widthConstant: CGFloat = 0, heightConstant: CGFloat = 0) -> JPKAnchorConstrant {
        
        superView.translatesAutoresizingMaskIntoConstraints = false
        
        let bucketConstrant = JPKAnchorConstrant()
        
        if let top = top {
            bucketConstrant.top = superView.topAnchor.constraint(equalTo: top, constant: topConstant)
            bucketConstrant.top?.isActive = true
        }
        
        if let left = left {
            bucketConstrant.left = superView.leftAnchor.constraint(equalTo: left, constant: leftConstant)
            bucketConstrant.left?.isActive = true
        }
        
        if let bottom = bottom {
            bucketConstrant.bottom = superView.bottomAnchor.constraint(equalTo: bottom, constant: -bottomConstant)
            bucketConstrant.bottom?.isActive = true
        }
        
        if let right = right {
            bucketConstrant.right = superView.rightAnchor.constraint(equalTo: right, constant: -rightConstant)
            bucketConstrant.right?.isActive = true
        }
        
        if widthConstant > 0 {
            bucketConstrant.width = superView.widthAnchor.constraint(equalToConstant: widthConstant)
            bucketConstrant.width?.isActive = true
        }
        
        if heightConstant > 0 {
            bucketConstrant.height = superView.heightAnchor.constraint(equalToConstant: heightConstant)
            bucketConstrant.height?.isActive = true
        }
        
        return bucketConstrant
        
    }
}
