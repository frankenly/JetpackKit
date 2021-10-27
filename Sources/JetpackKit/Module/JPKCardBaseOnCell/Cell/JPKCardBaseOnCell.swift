//
//  File.swift
//  
//
//  Created by Trakarn Jamlongpaksakun on 27/10/2564 BE.
//

import Foundation
import UIKit

open class JPKCardBaseOnCell: UITableViewCell {
    
    public weak var delegateOfBase: JPKCardBaseOnDelegate?
    
    public var indexPath: IndexPath?
    
    public enum Position {
        case top
        case center
        case bottom
        case single
    }
    
    private var _position: Position! {
        didSet {
            switch _position {
            case .top:
                self.cardViewTop.isHidden = false
                self.cardViewBottom.isHidden = true
                self.cardViewCenter.isHidden = true
                self.cardViewSingle.isHidden = true
                self.borderBottomView.isHidden = false
            case .center:
                self.cardViewTop.isHidden = true
                self.cardViewBottom.isHidden = true
                self.cardViewCenter.isHidden = false
                self.cardViewSingle.isHidden = true
                self.borderBottomView.isHidden = false
            case .bottom:
                self.cardViewTop.isHidden = true
                self.cardViewBottom.isHidden = false
                self.cardViewCenter.isHidden = true
                self.cardViewSingle.isHidden = true
                self.borderBottomView.isHidden = true
            case .single:
                self.cardViewTop.isHidden = true
                self.cardViewBottom.isHidden = true
                self.cardViewCenter.isHidden = true
                self.cardViewSingle.isHidden = false
                self.borderBottomView.isHidden = true
                
            case .none: break
            }
        }
    }
   
    public let cardViewTop: UIView = {
        let v = UIView()
        v.backgroundColor = JPKConfigure.cardCellProperty.cardColor
        v.layer.cornerRadius = JPKConfigure.cardCellProperty.cardRadius
        v.isHidden = true
        return v
    }()
    
    public let cardViewSingle: UIView = {
        let v = UIView()
        v.backgroundColor = JPKConfigure.cardCellProperty.cardColor
        v.layer.cornerRadius = JPKConfigure.cardCellProperty.cardRadius
        v.isHidden = true
        return v
    }()
    
    public let cardViewBottom: UIView = {
        let v = UIView()
        v.backgroundColor = JPKConfigure.cardCellProperty.cardColor
        v.layer.cornerRadius = JPKConfigure.cardCellProperty.cardRadius
        v.isHidden = true
        return v
    }()
    
    public let cardViewCenter: UIView = {
        let v = UIView()
        v.backgroundColor = JPKConfigure.cardCellProperty.cardColor
        v.layer.cornerRadius = 0
        v.isHidden = true
        return v
    }()
    
    public let borderBottomView: UIView = {
        let v = UIView()
        v.backgroundColor = JPKConfigure.cardCellProperty.cardColor
        return v
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setupCardView(
        position: JPKCardBaseOnCell.Position,
        left: CGFloat = JPKConfigure.cardCellProperty.marginCardLeft,
        right: CGFloat = JPKConfigure.cardCellProperty.marginCardRight,
        top: CGFloat = JPKConfigure.cardCellProperty.marginCardTop,
        bottom: CGFloat = JPKConfigure.cardCellProperty.marginCardBottom)
    {
        
        self._position = position
        
        contentView.clipsToBounds = true
        
        self.contentView.backgroundColor = JPKConfigure.cardCellProperty.backgroundColor
        
        cardViewTop.jpk
            .addSuperview(contentView)
            .anchor(
                top: contentView.topAnchor.of(0),
                left: contentView.leftAnchor.of(left),
                bottom: contentView.bottomAnchor.of(-10),
                right: contentView.rightAnchor.of(right),
                widthConstant: 0,
                heightConstant: 0)
        
        cardViewBottom.jpk
            .addSuperview(contentView)
            .anchor(
                top: contentView.topAnchor.of(-10),
                left: contentView.leftAnchor.of(left),
                bottom: contentView.bottomAnchor.of(0),
                right: contentView.rightAnchor.of(right),
                widthConstant: 0,
                heightConstant: 0)
        
        cardViewCenter.jpk
            .addSuperview(contentView)
            .anchor(
                top: contentView.topAnchor.of(-10),
                left: contentView.leftAnchor.of(left),
                bottom: contentView.bottomAnchor.of(-10),
                right: contentView.rightAnchor.of(right),
                widthConstant: 0,
                heightConstant: 0)
        
        cardViewSingle.jpk
            .addSuperview(contentView)
            .anchor(
                top: contentView.topAnchor.of(top),
                left: contentView.leftAnchor.of(left),
                bottom: contentView.bottomAnchor.of(bottom),
                right: contentView.rightAnchor.of(right),
                widthConstant: 0,
                heightConstant: 0)
        
        borderBottomView.jpk
            .addSuperview(contentView)
            .anchor(
                top: nil,
                left: cardViewTop.leftAnchor,
                bottom: contentView.bottomAnchor,
                right: cardViewTop.rightAnchor,
                widthConstant: 0,
                heightConstant: 1)
    }
    
    open func setupShadow() {
        cardViewTop.jpk.shadowFlatDesign(opacityShadow: 0.1, radius: JPKConfigure.cardCellProperty.cardRadius, offset: .init(width: 0, height: 0))
        cardViewCenter.jpk.shadowFlatDesign(opacityShadow: 0.1, radius: 0, offset: .init(width: 0, height: 0))
        cardViewBottom.jpk.shadowFlatDesign(opacityShadow: 0.1, radius: JPKConfigure.cardCellProperty.cardRadius, offset: .init(width: 0, height: 0))
        cardViewSingle.jpk.shadowFlatDesign(opacityShadow: 0.1, radius: JPKConfigure.cardCellProperty.cardRadius, offset: .init(width: 0, height: 0))
    }

    open func configure(
        position: JPKCardBaseOnCell.Position,
        model: Any? = nil,
        left: CGFloat = JPKConfigure.cardCellProperty.marginCardLeft,
        right: CGFloat = JPKConfigure.cardCellProperty.marginCardRight,
        top: CGFloat = JPKConfigure.cardCellProperty.marginCardTop,
        bottom: CGFloat = JPKConfigure.cardCellProperty.marginCardBottom,
        delegateOfBase: JPKCardBaseOnDelegate? = nil,
        completion: (() -> Void)? = nil)
    {
        setupCardView(
            position: position,
            left: left,
            right: right,
            top: top,
            bottom: bottom)
        setupCell()
        updateCell(model, completion: completion)
    }
    
    open func setupCell() {
        
    }
    
    /// set data in cell (config > update cell)
    open func updateCell(_ model: Any?, completion: (() -> Void)?) {
        
    }
    
}

