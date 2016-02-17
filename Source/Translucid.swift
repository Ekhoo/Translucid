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
    
    public override var frame: CGRect {
        didSet {
            self.textLayer.frame = frame
            self.autoResizeTextLayer()
        }
    }
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
        var rect: CGRect = NSString(string: "Coucou Salut").boundingRectWithSize(CGSizeMake(self.bounds.width, CGFloat(MAXFLOAT)), options: .UsesLineFragmentOrigin, attributes: [NSFontAttributeName: UIFont.boldSystemFontOfSize(fontSize)], context: nil)
        
        while rect.size.height < self.bounds.size.height {
            fontSize++
            rect = NSString(string: "Coucou Salut").boundingRectWithSize(CGSizeMake(self.bounds.width, CGFloat(MAXFLOAT)), options: .UsesLineFragmentOrigin, attributes: [NSFontAttributeName: UIFont.boldSystemFontOfSize(fontSize)], context: nil)
        }
        
        --fontSize
        
        self.textLayer.fontSize = fontSize
        self.textLayer.font = UIFont.boldSystemFontOfSize(fontSize)
    }
    
    private func commonInit() {
        self.backgroundColor = UIColor.blueColor()
        
        self.textLayer.backgroundColor = UIColor.greenColor().CGColor
        self.textLayer.string = "Coucou Salut"
        self.textLayer.alignmentMode = kCAAlignmentCenter
        self.textLayer.frame = self.bounds
        self.textLayer.font = UIFont.boldSystemFontOfSize(0)
        self.textLayer.fontSize = 0.0;
        self.textLayer.wrapped = true
        self.textLayer.rasterizationScale = UIScreen.mainScreen().scale
        self.textLayer.truncationMode = kCATruncationEnd
        self.textLayer.contentsScale = UIScreen.mainScreen().scale
        
        self.autoResizeTextLayer()
        
        self.layer.addSublayer(self.textLayer)
    }
}
