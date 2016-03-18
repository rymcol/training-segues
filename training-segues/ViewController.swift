//
//  ViewController.swift
//  training-segues
//
//  Created by Ryan Collins on 2016-03-18.
//  Copyright © 2016 Ryan Collins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loadBlue (sender: AnyObject!) {
        
        let str = "Hey, we just came from yellow!"
        
        performSegueWithIdentifier("goToBlue", sender: str)
    }

    @IBAction func loadRed(sender: AnyObject) {
        performSegueWithIdentifier("goToRed", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "goToBlue" {
            if let blueVC = segue.destinationViewController as? BlueViewController {
                if let text = sender as? String {
                    blueVC.transferText = text
                }
            }
        }
    }

}

