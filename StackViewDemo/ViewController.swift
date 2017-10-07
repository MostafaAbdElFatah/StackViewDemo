//
//  ViewController.swift
//  StackViewDemo
//
//  Created by Mostafa on 7/17/17.
//  Copyright © 2017 Mostafa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labeltext: UILabel!
    var show = true
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Show_btnClicked(sender: AnyObject) {
        
        let btn = sender as! UIButton
        if btn.titleLabel?.text == "Show Description"{
            btn.setTitle("hidden Description", forState: .Normal)
            UIView.animateWithDuration(0.3,  animations: { () -> Void in
                self.labeltext.hidden = false
            })
        }else if btn.titleLabel?.text == "hidden Description"{
            btn.setTitle("Show Description", forState: .Normal)
            UIView.animateWithDuration(0.3,  animations: { () -> Void in
                self.labeltext.hidden = true
            })
        }
        
    }

}

