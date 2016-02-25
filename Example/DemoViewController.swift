//
//  DemoViewController.swift
//  Translucid
//
//  Created by Lucas Ortis on 18/12/2015.
//  Copyright © 2015 Ekhoo. All rights reserved.
//

import UIKit

class DemoViewController: UIViewController {
    
    override func loadView() {
        super.loadView()
        
        self.view.backgroundColor = UIColor.whiteColor()
        
        let deviceScreenSize: CGFloat = UIScreen.mainScreen().bounds.height
        let offset: CGFloat = deviceScreenSize > 320.0 ? 50.0 : 35.0
        
        let star: Translucid = Translucid(frame: CGRectMake(0.0, offset, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame) / 2.0))
        star.font = UIFont(name: "Starjedi", size: 20)!
        star.text = "Star"

        let wars: Translucid = Translucid(frame: CGRectMake(0.0, CGRectGetHeight(self.view.frame) / 2.0 - offset, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame) / 2.0))
        wars.font = UIFont(name: "Starjedi", size: 20)!
        wars.text = "Wars"
        
        self.view.addSubview(star)
        self.view.addSubview(wars)
    }
    
}
