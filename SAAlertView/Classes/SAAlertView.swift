//
//  SAAlertView.swift
//  fingerPrint
//
//  Created by Shamshir on 27/12/17.
//  Copyright © 2017 shamshir. All rights reserved.
//

import UIKit

@objc open class SAAlertView : NSObject {
    
    class var mainInstance : SAAlertView {
        struct Static {
            static let inst : SAAlertView = SAAlertView ()
        }
        return Static.inst
    }
    
    fileprivate func currentViewController() -> UIViewController? {
        
        var presentedWindow = UIApplication.shared.keyWindow?.rootViewController
        while let pWindow = presentedWindow?.presentedViewController
        {
            presentedWindow = pWindow
        }
        
        return presentedWindow
    }
    
    
    
    open class func alertView(_ title: String, message: String, buttonTitle: String, buttonAction: @escaping () -> ()) -> UIAlertController {
        let alertVC = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        let acceptButton = UIAlertAction(title: buttonTitle, style: .default, handler: { (action: UIAlertAction) in
            buttonAction()
        })
        alertVC.addAction(acceptButton)
        
        mainInstance.currentViewController()?.present(alertVC, animated: true, completion: nil)
        return alertVC
    }
    
    
    open class func alertView(_ title: String) -> UIAlertController {
        return alertView(title, message: "")
    }
    
    
    open class func alertView(_ title: String, message: String) -> UIAlertController {
        return alertView(title, message: message, buttonTitle: "OK", buttonAction: {
          
        })
    }
    
    open class func multipleAlertView(title:String,message:String,buttonTitles:[String],completion: @escaping (Int)->()) {
    
    let alertVC = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        for i in 0...buttonTitles.count-1{
            
    let acceptButton = UIAlertAction(title: buttonTitles[i], style: .default, handler: { (action: UIAlertAction) in
        completion(i)
    })
            
    alertVC.addAction(acceptButton)
        }
    
    mainInstance.currentViewController()?.present(alertVC, animated: true, completion: nil)
    
    
    }
    
    
    
    open class func actionSheet(title:String,buttonTitles:[String],completion: @escaping (Int)->()){
        
        
        let actionSheetController: UIAlertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
       
        
        for i in 0...buttonTitles.count-1{
        let actionButton: UIAlertAction = UIAlertAction(title: buttonTitles[i], style: .default) { action -> Void in
            
            completion(i)
        }
            
           actionSheetController.addAction(actionButton)
            
        }
        
        
        let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .cancel) { action -> Void in }
        actionSheetController.addAction(cancelAction)
       
        mainInstance.currentViewController()?.present(actionSheetController, animated: true, completion: nil)
    }
    
}


