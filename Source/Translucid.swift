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
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        
        self.textLayer.frame = self.bounds
    }
    
    private func commonInit() {
        self.backgroundColor = UIColor.blueColor()
        
        self.textLayer.backgroundColor = UIColor.greenColor().CGColor
        self.textLayer.string = "Coucou"
        
        self.layer.addSublayer(self.textLayer)
    }
}
