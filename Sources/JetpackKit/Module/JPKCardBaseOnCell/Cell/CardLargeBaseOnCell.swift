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
        left: CGFloat = JPKCardBaseOnCellProperty.marginCardLeft,
        right: CGFloat = JPKCardBaseOnCellProperty.marginCardRight,
        top: CGFloat = JPKCardBaseOnCellProperty.marginCardTop,
        bottom: CGFloat = JPKCardBaseOnCellProperty.marginCardBottom) {
            
            super.setupCardView(position: position, left: left, right: right, top: top, bottom: bottom)
            super.borderBottomView.isHidden = true
            
            super.cardViewSingle.layer.cornerRadius = JPKCardBaseOnCellProperty.cardLargeRadius
            super.cardViewTop.layer.cornerRadius = JPKCardBaseOnCellProperty.cardLargeRadius
            super.cardViewCenter.layer.cornerRadius = JPKCardBaseOnCellProperty.cardLargeRadius
            super.cardViewBottom.layer.cornerRadius = JPKCardBaseOnCellProperty.cardLargeRadius
            
            //            super.cardViewSingle.shadowCard()
            //            super.cardViewTop.shadowCard()
            //            super.cardViewCenter.shadowCard()
            //            super.cardViewBottom.shadowCard()
            
            super.cardViewTop.jpk.constrants?.left?.constant = JPKCardBaseOnCellProperty.marginCardLargeLeft
            super.cardViewTop.jpk.constrants?.right?.constant = JPKCardBaseOnCellProperty.marginCardLargeRight * -1
            
            super.cardViewSingle.jpk.constrants?.left?.constant = JPKCardBaseOnCellProperty.marginCardLargeLeft
            super.cardViewSingle.jpk.constrants?.right?.constant = JPKCardBaseOnCellProperty.marginCardLargeRight * -1
            
            super.cardViewCenter.jpk.constrants?.left?.constant = JPKCardBaseOnCellProperty.marginCardLargeLeft
            super.cardViewCenter.jpk.constrants?.right?.constant = JPKCardBaseOnCellProperty.marginCardLargeRight * -1
            
            super.cardViewBottom.jpk.constrants?.left?.constant = JPKCardBaseOnCellProperty.marginCardLargeLeft
            super.cardViewBottom.jpk.constrants?.right?.constant = JPKCardBaseOnCellProperty.marginCardLargeRight * -1
            
        }
}
