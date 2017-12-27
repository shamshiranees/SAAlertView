//
//  ViewController.swift
//  SAAlertView
//
//  Created by smzranz@gmail.com on 12/27/2017.
//  Copyright (c) 2017 smzranz@gmail.com. All rights reserved.
//

import UIKit
import SAAlertView

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func alert(_ sender: Any) {
        SAAlertView.alertView("Alert Title")
        
        
    }
    
    
    
    @IBAction func alertWithMessage(_ sender: Any) {
        
      SAAlertView.alertView("Warning", message: "type you message here")
        
    }
    
    
    @IBAction func alertAction(_ sender: Any) {
        
         SAAlertView.alertView("Waring", message: "type your message", buttonTitle: "retry", buttonAction: reload())
    }
    
    func reload(){
        print("Reload")
        
    }
}

