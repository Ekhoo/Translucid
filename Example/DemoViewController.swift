//
//  DemoViewController.swift
//  Translucid
//
//  Created by Lucas Ortis on 18/12/2015.
//  Copyright © 2015 Ekhoo. All rights reserved.
//

import UIKit

class DemoViewController: UIViewController {

    private var translucid: Translucid?
    
    override func loadView() {
        super.loadView()
        
        self.view.backgroundColor = UIColor.whiteColor()
        self.translucid = Translucid(frame: CGRectMake(0, 0, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame) / 2))
        self.translucid!.font = UIFont(name: "Starjedi", size: 20)!
        self.translucid!.text = "Star Wars"
        self.translucid!.center = CGPointMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame))
        
        
        self.view.addSubview(self.translucid!)
    }
    
}
