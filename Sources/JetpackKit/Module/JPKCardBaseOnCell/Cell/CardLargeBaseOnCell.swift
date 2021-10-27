//
//  File.swift
//  
//
//  Created by Trakarn Jamlongpaksakun on 27/10/2564 BE.
//

import Foundation
import UIKit

open class CardLargeBaseOnCell: JPKCardBaseOnCell {
    
    override public func setupCardView(
        position: JPKCardBaseOnCell.Position,
        left: CGFloat = JPKConfigure.cardCellProperty.marginCardLeft,
        right: CGFloat = JPKConfigure.cardCellProperty.marginCardRight,
        top: CGFloat = JPKConfigure.cardCellProperty.marginCardTop,
        bottom: CGFloat = JPKConfigure.cardCellProperty.marginCardBottom) {
            
            super.setupCardView(position: position, left: left, right: right, top: top, bottom: bottom)
            super.borderBottomView.isHidden = true
            
            super.cardViewSingle.layer.cornerRadius = JPKConfigure.cardCellProperty.cardLargeRadius
            super.cardViewTop.layer.cornerRadius = JPKConfigure.cardCellProperty.cardLargeRadius
            super.cardViewCenter.layer.cornerRadius = JPKConfigure.cardCellProperty.cardLargeRadius
            super.cardViewBottom.layer.cornerRadius = JPKConfigure.cardCellProperty.cardLargeRadius
            
            //            super.cardViewSingle.shadowCard()
            //            super.cardViewTop.shadowCard()
            //            super.cardViewCenter.shadowCard()
            //            super.cardViewBottom.shadowCard()
            
            super.cardViewTop.jpk.constrants?.left?.constant = JPKConfigure.cardCellProperty.marginCardLargeLeft
            super.cardViewTop.jpk.constrants?.right?.constant = JPKConfigure.cardCellProperty.marginCardLargeRight * -1
            
            super.cardViewSingle.jpk.constrants?.left?.constant = JPKConfigure.cardCellProperty.marginCardLargeLeft
            super.cardViewSingle.jpk.constrants?.right?.constant = JPKConfigure.cardCellProperty.marginCardLargeRight * -1
            
            super.cardViewCenter.jpk.constrants?.left?.constant = JPKConfigure.cardCellProperty.marginCardLargeLeft
            super.cardViewCenter.jpk.constrants?.right?.constant = JPKConfigure.cardCellProperty.marginCardLargeRight * -1
            
            super.cardViewBottom.jpk.constrants?.left?.constant = JPKConfigure.cardCellProperty.marginCardLargeLeft
            super.cardViewBottom.jpk.constrants?.right?.constant = JPKConfigure.cardCellProperty.marginCardLargeRight * -1
            
        }
}
