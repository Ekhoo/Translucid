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
    private let imageLayer: CALayer = CALayer()
    
    public var text: String = "Hello World" {
        didSet {
            self.textLayer.string = self.text
            self.autoResizeTextLayer()
        }
    }
    
    public override var frame: CGRect {
        didSet {
            self.imageLayer.frame = self.bounds
            self.textLayer.frame = self.bounds
            self.autoResizeTextLayer()
        }
    }
    
    public var font: UIFont = UIFont.boldSystemFontOfSize(20) {
        didSet {
            self.textLayer.font = self.font
            self.autoResizeTextLayer()
        }
    }
    
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
        var rect: CGRect = NSString(string: self.text).boundingRectWithSize(CGSizeMake(self.bounds.width, CGFloat(MAXFLOAT)), options: .UsesLineFragmentOrigin, attributes: [NSFontAttributeName: self.font.fontWithSize(fontSize)], context: nil)
        
        while rect.size.height < self.bounds.size.height {
            fontSize++
            rect = NSString(string: self.text).boundingRectWithSize(CGSizeMake(self.bounds.width, CGFloat(MAXFLOAT)), options: .UsesLineFragmentOrigin, attributes: [NSFontAttributeName: self.font.fontWithSize(fontSize)], context: nil)
        }
        
        --fontSize
        
        self.textLayer.fontSize = fontSize
        self.textLayer.font = self.font.fontWithSize(fontSize)
    }
    
    private func commonInit() {
        self.imageLayer.contents = UIImage(named: "stars")?.CGImage

        self.textLayer.string = self.text
        self.textLayer.alignmentMode = kCAAlignmentCenter
        self.textLayer.frame = self.bounds
        self.textLayer.fontSize = 0.0
        self.textLayer.font = self.font
        self.textLayer.wrapped = true
        self.textLayer.rasterizationScale = UIScreen.mainScreen().scale
        self.textLayer.truncationMode = kCATruncationEnd
        self.textLayer.contentsScale = UIScreen.mainScreen().scale
        
        self.autoResizeTextLayer()
        
        self.imageLayer.mask = self.textLayer
        
        self.layer.addSublayer(self.imageLayer)
    }
}
