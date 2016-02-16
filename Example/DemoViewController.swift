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
        
        self.view.backgroundColor = UIColor.redColor()
        self.translucid = Translucid(frame: CGRectMake(0, 0, 100, 100))
        
        self.view.addSubview(self.translucid!)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
    }
    
}
