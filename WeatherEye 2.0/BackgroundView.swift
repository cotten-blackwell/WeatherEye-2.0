//
//  BackgroundView.swift
//  WeatherEye 2.0
//
//  Created by Cotten Blackwell on 11/8/15.
//  Copyright © 2015 Cotten Blackwell. All rights reserved.
//

import UIKit

class BackgroundView: UIView {
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        
        // Background View
        
        //// Color Declarations
        var lightPurple: UIColor = UIColor(red: 0.377, green: 0.075, blue: 0.778, alpha: 1.000)
        var darkPurple: UIColor = UIColor(red: 0.060, green: 0.036, blue: 0.202, alpha: 1.000)
        
        let context = UIGraphicsGetCurrentContext()
        
        //// Gradient Declarations
        let purpleGradient = CGGradientCreateWithColors(CGColorSpaceCreateDeviceRGB(), [lightPurple.CGColor, darkPurple.CGColor], [0, 1])
        
        //// Background Drawing
        let backgroundPath = UIBezierPath(rect: CGRectMake(0, 0, self.frame.width, self.frame.height))
        CGContextSaveGState(context)
        backgroundPath.addClip()
        
        //        (context, purpleGradient,
        //            CGPointMake(160, 0),
        //            CGPointMake(160, 568),
        //            UInt32(CGGradientDrawingOptions.DrawsBeforeStartLocation) | UInt32(CGGradientDrawingOptions.DrawsAfterEndLocation))
        CGContextDrawLinearGradient(context,
            purpleGradient,
            CGPointMake(160, 0),
            CGPointMake(160, 568),
            CGGradientDrawingOptions.init(rawValue: 0))
        CGContextRestoreGState(context)
        
    }
    
}
