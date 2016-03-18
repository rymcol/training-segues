//
//  BlueViewController.swift
//  training-segues
//
//  Created by Ryan Collins on 2016-03-18.
//  Copyright © 2016 Ryan Collins. All rights reserved.
//

import UIKit

class BlueViewController: UIViewController {
    
    @IBOutlet weak var mainLabel: UILabel!
    
    var transferText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        mainLabel.text = transferText
    }
    
}
