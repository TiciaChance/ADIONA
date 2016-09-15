//
//  initScreen.swift
//  ADIONA
//
//  Created by Flatiron School on 9/10/16.
//  Copyright © 2016 Laticia Chance. All rights reserved.
//

import UIKit
import JBButton

class initScreen: UIViewController, JBButtonDelegate, UITextFieldDelegate {
    @IBOutlet weak var submit: JBButton!
    
    let textField = UITextField()
    //var test = UIView()
    //var submitButton = JBButton()
    weak var delegate: JBButtonDelegate?
    weak var textfieldDelegate: UITextFieldDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        submitButtonSetup()
        
        self.submit.targetForAction(#selector(didTapOnButton), withSender: self)
        
        let c1 = UIColor(red: 209/255, green: 200/255, blue: 255/255, alpha: 1)
        let c2 = UIColor(red: 179/255, green: 112/255, blue: 176/255, alpha: 1)
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [c1.CGColor, c2.CGColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        self.view.layer.addSublayer(gradientLayer)
        
        submit.targetForAction(#selector(buttonAction), withSender: JBButton())
        submit.targetForAction(#selector(buttonAction), withSender: self)
        
        view.addSubview(submit)
        
        
        let textField = UITextField(frame: CGRectMake(20, 100, 300, 40))
        textField.placeholder = "Enter phone number here"
        textField.font = UIFont.systemFontOfSize(15)
        textField.borderStyle = UITextBorderStyle.RoundedRect
        textField.autocorrectionType = UITextAutocorrectionType.No
        textField.keyboardType = UIKeyboardType.Default
        textField.returnKeyType = UIReturnKeyType.Done
        textField.clearButtonMode = UITextFieldViewMode.WhileEditing;
        textField.contentVerticalAlignment = UIControlContentVerticalAlignment.Center
        textField.center = CGPointMake(210, 290)
        textField.delegate = self
        self.view.addSubview(textField)
        
        
        var welcomeLabel = UILabel(frame: CGRectMake(0, 0, 300, 21))
        welcomeLabel.center = CGPointMake(215, 160)
        welcomeLabel.textAlignment = NSTextAlignment.Center
        welcomeLabel.text = "WELCOME TO ADIONA!"
        let welcomeFont = UIFont(name: "AmericanTypewriter-Bold", size: 23.0)
        welcomeLabel.font = welcomeFont
        self.view.addSubview(welcomeLabel)
        
        
        
        
        var label = UILabel(frame: CGRectMake(0, 0, 300, 21))
        label.center = CGPointMake(210, 250)
        label.textAlignment = NSTextAlignment.Center
        label.text = "Who is your emergency contact?"
        let font = UIFont(name: "AmericanTypewriter-Bold", size: 18.0)
        label.font = font
        self.view.addSubview(label)
        
        
    }
    
    func submitButtonSetup() {
        
        
        self.submit.delegate = self
        self.submit.setTitleFont(UIFont(name: "AmericanTypewriter-Bold", size: 18.0)!)
        
        // Create a gradiant layer
        let c1 = UIColor(red: 0/255, green: 161/255, blue: 0/255, alpha: 1)
        let c2 = UIColor(red: 255/255, green: 255/255, blue: 51/255, alpha: 1)
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.submit.bounds
        gradientLayer.colors = [c1.CGColor, c2.CGColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        self.submit.layer.addSublayer(gradientLayer)
        // Rounded
        
        self.submit.layer.cornerRadius = 20
        
        //Add the custom indicator
        //                let indicator = NVActivityIndicatorView(frame: CGRect.zero, type: NVActivityIndicatorType.LineScalePulseOut, color: UIColor.whiteColor(), padding: 0)
        //                self.submit.setCustomLoader(indicator, startAnimationBlock: { () in
        //                    indicator.startAnimation()
        //                    }, stopAnimationBlock: { () in
        //                        indicator.stopAnimation()
        //                })
        
        // Add a shadow to the container view
        self.submit.layer.masksToBounds = false
        self.submit.layer.shadowColor = UIColor.blackColor().CGColor
        self.submit.layer.shadowOffset = CGSize(width: 5, height: 5)
        self.submit.layer.shadowOpacity = 0.5
        //self.submit.layer.shadowRadius = 20
        
        // Scale animation
        let scaleSmallAnimation = CASpringAnimation(keyPath: "transform.scale")
        scaleSmallAnimation.fromValue = 1.0
        scaleSmallAnimation.toValue = 0.9
        scaleSmallAnimation.damping = 0.4
        scaleSmallAnimation.initialVelocity = 12.0
        // Group set to customTouchesBeganAnimations
        let touchesBegan = CAAnimationGroup()
        touchesBegan.animations = [scaleSmallAnimation]
        touchesBegan.duration = 0.2
        touchesBegan.fillMode = kCAFillModeForwards
        touchesBegan.removedOnCompletion = false
        self.submit.customTouchesBeganAnimations = touchesBegan
        
        
        // Scale animation
        let scaleBigAnimation = CASpringAnimation(keyPath: "transform.scale")
        scaleBigAnimation.fromValue = 0.9
        scaleBigAnimation.toValue = 1.0
        scaleBigAnimation.damping = 0.4
        scaleBigAnimation.initialVelocity = 12.0
        // Group set to customTouchesEndedAnimations
        let touchesEnded = CAAnimationGroup()
        touchesEnded.animations = [scaleBigAnimation]
        touchesEnded.duration = 0.2
        touchesEnded.fillMode = kCAFillModeForwards
        touchesEnded.removedOnCompletion = false
        self.submit.customTouchesEndedAnimations = touchesEnded
        
        // Pulse animation
        let pulseAnimation = CABasicAnimation(keyPath: "transform.scale")
        pulseAnimation.duration = 2
        pulseAnimation.toValue = 0.85
        // Group set to customLoadingAnimations
        let group = CAAnimationGroup()
        group.animations = [pulseAnimation]
        group.duration = 2
        group.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        group.autoreverses = true
        group.repeatCount = FLT_MAX
        self.submit.customLoadingAnimations = group}
    
    func buttonAction(sender: JBButton!) {
        print("Button tapped")
        
    }
    
    func didTapOnButton(sender: JBButton!) {
        submit.delegate = self
        let phoneNumber = textField.text
        NSUserDefaults.standardUserDefaults().setObject(phoneNumber, forKey:"phoneNumber")
        NSUserDefaults.standardUserDefaults().synchronize()
        
        let output = NSUserDefaults.standardUserDefaults().objectForKey("phoneNumber")
        if (output != nil)
        {
            
            
            
            let alertController = UIAlertController(title: nil, message: "Takes the appearance of the bottom bar if specified; otherwise, same as UIActionSheetStyleDefault.", preferredStyle: .ActionSheet)
            
            let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (action) in
                // ...
            }
            alertController.addAction(cancelAction)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
                let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                let loginViewController: UIViewController = mainStoryboard.instantiateViewControllerWithIdentifier("mainScreen")
                self.presentViewController(loginViewController, animated: true, completion: nil)
                // ...
            }
            alertController.addAction(OKAction)
            
            self.presentViewController(alertController, animated: true) {
                // ...
            }
//            let alert = UIAlertController(title: "", message: "Phone number saved!", preferredStyle: UIAlertControllerStyle.Alert)
//            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
//            
//            self.presentViewController(alert, animated: true, completion: nil)
//            
//            
//            let mainStoryboard: UIStoryboard = UIStoryboard(name: "mainScreen", bundle: nil)
//            let loginViewController: UIViewController = mainStoryboard.instantiateViewControllerWithIdentifier("mainScreen")
//            let vc = ViewController()
//            self.presentViewController(vc, animated: true, completion: nil)
//            
////            let OKAction = UIAlertAction(title: "Log Out", style: .Default) { (action) in
////                let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
////                let loginViewController: UIViewController = mainStoryboard.instantiateViewControllerWithIdentifier("LoginView")
////                self.presentViewController(loginViewController, animated: true, completion: nil)
////            }
////            confirmationAlertController.addAction(OKAction)
////            
////            self.presentViewController(confirmationAlertController, animated: true, completion: nil)
////            
//            
            print("Button tapped")
            print(output)
            print(phoneNumber)
        }
        
        //        if sender == self.submit {
        //            sender.startLoading()
        //            print("Button tapped")
        //
        //        }
    }
}
