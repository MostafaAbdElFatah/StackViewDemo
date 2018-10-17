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

    
    @IBAction func Show_btnClicked(_ sender: AnyObject) {
        
        let btn = sender as! UIButton
        if btn.titleLabel?.text == "Show Description" {
            btn.setTitle("hidden Description", for: .normal)
            UIView.animate(withDuration: 0.3,  animations: { () -> Void in
                self.labeltext.isHidden = false
            })
        }else if btn.titleLabel?.text == "hidden Description"{
            btn.setTitle("Show Description", for: .normal)
            UIView.animate(withDuration: 0.3,  animations: { () -> Void in
                self.labeltext.isHidden = true
            })
        }
        
    }

}

