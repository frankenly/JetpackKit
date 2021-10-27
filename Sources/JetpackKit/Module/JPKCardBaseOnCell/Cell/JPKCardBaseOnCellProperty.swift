//
//  File.swift
//  
//
//  Created by Trakarn Jamlongpaksakun on 27/10/2564 BE.
//

import Foundation
import UIKit

public class JPKCardBaseOnCellProperty {
    
    /// background cell
    public var backgroundColor: UIColor = JPKColor.lightGray
    
    /// background card
    public var cardColor: UIColor = UIColor.white
    
    /// line color
    public var lineColor: UIColor = UIColor(red: 227/255, green: 230/255, blue: 239/255, alpha: 1)
    
    /// margin top card min, large
    public var marginCardTop: CGFloat = 0
    
    /// margin bottom card mini, large
    public var marginCardBottom: CGFloat = 0
    
    /// margin let card mini
    public var marginCardLeft: CGFloat = 18
    
    /// margin right card mini
    public var marginCardRight: CGFloat = 18
    
    /// radius card mini
    public var cardRadius: CGFloat = 10
    
    /// radius card large
    public var cardLargeRadius: CGFloat = 12
    
    /// maring left card large
    public var marginCardLargeLeft: CGFloat = 12

    /// margin right card large
    public var marginCardLargeRight: CGFloat = 12
    
}
