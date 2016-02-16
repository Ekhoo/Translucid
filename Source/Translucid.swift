//
//  Translucid.swift
//  Translucid
//
//  Created by Lucas Ortis on 18/12/2015.
//  Copyright © 2015 Ekhoo. All rights reserved.
//

import UIKit

public class Translucid: UIView {

    private let textLayer: CATextLayer = CATextLayer()
    
    
    public var text: String?
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.commonInit()
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.commonInit()
    }
    
    private func autoResizeTextLayer() {
        var fontSize: CGFloat = 1.0
        var rect: CGRect = NSString(string: "Coucou Salut Bonjour").boundingRectWithSize(self.bounds.size, options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: [NSFontAttributeName: UIFont.boldSystemFontOfSize(fontSize)], context: nil)
        
        while rect.width > 0.0 && CGRectContainsRect(self.bounds, rect) {
            fontSize++
            rect = NSString(string: "Coucou Salut Bonjour").boundingRectWithSize(self.bounds.size, options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: [NSFontAttributeName: UIFont.boldSystemFontOfSize(fontSize)], context: nil)
        }
        
        self.textLayer.fontSize = --fontSize;
    }
    
    private func commonInit() {
        self.backgroundColor = UIColor.blueColor()
        
        self.textLayer.backgroundColor = UIColor.greenColor().CGColor
        self.textLayer.string = "Coucou Salut Bonjour"
        self.textLayer.alignmentMode = kCAAlignmentCenter
        self.textLayer.frame = self.bounds
        self.textLayer.font = UIFont.boldSystemFontOfSize(200.0)
        self.textLayer.wrapped = true
        
        self.autoResizeTextLayer()
        
        self.layer.addSublayer(self.textLayer)
    }
}
