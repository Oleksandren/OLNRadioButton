//
//  OLNRadioButton.swift
//
//  Created by Oleksandr Nechet on 1/20/19.
//  Copyright © 2019 oln. All rights reserved.
//

import UIKit

open class OLNRadioButton: UIControl
{
    @IBInspectable public var color: UIColor = .black
    @IBInspectable public var lineWidthInPercent: CGFloat = 0.1
    
    override open func draw(_ rect: CGRect)
    {
        let lineWidth: CGFloat = min(rect.width, rect.height) * lineWidthInPercent
        
        
        let rec = rect.inset(by: UIEdgeInsets(top: 2*lineWidth,
                                              left: 2*lineWidth,
                                              bottom: 2*lineWidth,
                                              right: 2*lineWidth))
        let pathC = UIBezierPath(ovalIn: rec)
        isSelected ? color.setFill() : UIColor.clear.setFill()
        pathC.fill()
        
        
        let center = CGPoint(x: rect.width / 2, y: rect.height / 2)
        let radius: CGFloat = (min(rect.width, rect.height) - lineWidth)/2
        let path = UIBezierPath(arcCenter: center,
                                radius: radius,
                                startAngle: 0,
                                endAngle: .pi*2,
                                clockwise: true)
        path.lineWidth = lineWidth
        color.setStroke()
        path.stroke()
    }
}
