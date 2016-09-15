//
//  ViewController.swift
//  ADIONA
//
//  Created by Laticia Chance on 9/10/16.
//  Copyright © 2016 Laticia Chance. All rights reserved.
//

import UIKit
import MessageUI
import JBButton
<<<<<<< HEAD
class ViewController: UIViewController, JBButtonDelegate {
@IBOutlet weak var imNervous: JBButton!
@IBOutlet weak var contactNearby: JBButton!
@IBOutlet weak var emergency: JBButton!
weak var delegate: JBButtonDelegate?
    let messageComposer = MessageComposer()
    @IBOutlet weak var findSafety: UIBarButtonItem!
    
//    @IBAction func findSafetyTapped(sender: AnyObject) {
//        print("test")
//    }
=======
import CoreLocation


//var locationManager = CLLocationManager()

class ViewController: UIViewController, CLLocationManagerDelegate, JBButtonDelegate {
    
    
    @IBOutlet weak var imNervous: JBButton!
    @IBOutlet weak var contactNearby: JBButton!
    @IBOutlet weak var emergency: JBButton!
    
    weak var delegate: JBButtonDelegate?
    
    
    // Create a MessageComposer
    let messageComposer = MessageComposer()
    

    
    
>>>>>>> e1cfb1a6ea983470f91087042272a71d09fbbcfb
    override func viewDidLoad() {
        
        super.viewDidLoad()
<<<<<<< HEAD
        self.navigationController?.toolbarHidden = false 
=======
        
        var locationManager = CLLocationManager()
        
        //contains the users location as and when it gets updated
        
        
        /*
        func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
            
            //get most recent coordinate
            
            let lastCoord = locations[locations.count - 1]
            //get lat and long of that coord
            let latitude = lastCoord.coordinate.latitude
            let longitude = lastCoord.coordinate.longitude
            
            let lastCoord2D = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
            print(lastCoord2D)
            
        }
        
        */
        
        
        // Do any additional setup after loading the view, typically from a nib.
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
        
        
>>>>>>> e1cfb1a6ea983470f91087042272a71d09fbbcfb
        let c1 = UIColor(red: 209/255, green: 200/255, blue: 255/255, alpha: 1)
        let c2 = UIColor(red: 179/255, green: 112/255, blue: 176/255, alpha: 1)
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [c1.CGColor, c2.CGColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        self.view.layer.addSublayer(gradientLayer)
        view.addSubview(imNervous)
        view.addSubview(contactNearby)
        view.addSubview(emergency)
<<<<<<< HEAD
        self.imNervous.targetForAction(#selector(didTapOnButton), withSender: JBButton())
        self.imNervous.targetForAction(#selector(didTapOnButton), withSender: self)
setupImnervousButtons()
setupContactNearbyButtons()
setupEmergencyButtons()
        
        self.imNervous.targetForAction(#selector(didTapOnButton), withSender: JBButton())
        self.imNervous.targetForAction(#selector(didTapOnButton), withSender: self)

        // Do any additional setup after loading the view, typically from a nib.
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        locationManager.delegate = self
=======

>>>>>>> e1cfb1a6ea983470f91087042272a71d09fbbcfb

        

<<<<<<< HEAD
    func setupImnervousButtons() {
        self.imNervous.setTitleFont(UIFont(name: "AmericanTypewriter-Bold", size: 18.0)!)
        self.imNervous.targetForAction(#selector(didTapOnButton), withSender: self)
        self.imNervous.delegate = self
        // Create a gradiant layer
        let c1 = UIColor(red: 0/255, green: 161/255, blue: 0/255, alpha: 1)
        let c2 = UIColor(red: 255/255, green: 255/255, blue: 51/255, alpha: 1)
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.imNervous.bounds
        gradientLayer.colors = [c1.CGColor, c2.CGColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        self.imNervous.layer.addSublayer(gradientLayer)
        // Rounded
        self.imNervous.cornerRadius = 25
=======
    
        func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
        func setupImnervousButtons() {
            self.imNervous.delegate = self
            self.imNervous.targetForAction(#selector(didTapOnButton), withSender: self)
            self.imNervous.setTitleFont(UIFont(name: "AmericanTypewriter-Bold", size: 18.0)!)
            
            // Create a gradiant layer
            let c1 = UIColor(red: 0/255, green: 161/255, blue: 0/255, alpha: 1)
            let c2 = UIColor(red: 255/255, green: 255/255, blue: 51/255, alpha: 1)
            let gradientLayer = CAGradientLayer()
            gradientLayer.frame = self.imNervous.bounds
            gradientLayer.colors = [c1.CGColor, c2.CGColor]
            gradientLayer.startPoint = CGPoint(x: 0, y: 0)
            gradientLayer.endPoint = CGPoint(x: 1, y: 1)
            self.imNervous.layer.addSublayer(gradientLayer)
            // Rounded
            self.imNervous.cornerRadius = 25
            
            // Add the custom indicator
            //        let indicator = NVActivityIndicatorView(frame: CGRect.zero, type: NVActivityIndicatorType.LineScalePulseOut, color: UIColor.whiteColor(), padding: 0)
            //        self.gradientLogin.setCustomLoader(indicator, startAnimationBlock: { () in
            //            indicator.startAnimation()
            //            }, stopAnimationBlock: { () in
            //                indicator.stopAnimation()
            //        })
            
            // Add a shadow to the container view
            self.imNervous.layer.masksToBounds = false
            self.imNervous.layer.shadowColor = UIColor.blackColor().CGColor
            self.imNervous.layer.shadowOffset = CGSize(width: 5, height: 5)
            self.imNervous.layer.shadowOpacity = 0.5
            
            
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
            self.imNervous.customTouchesBeganAnimations = touchesBegan
            
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
            self.imNervous.customTouchesEndedAnimations = touchesEnded
            
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
            self.imNervous.customLoadingAnimations = group
            //
        }
    
    
    
    
    
        func setupContactNearbyButtons() {
            self.contactNearby.setTitleFont(UIFont(name: "AmericanTypewriter-Bold", size: 18.0)!)
            
            // Create a gradiant layer
            let c1 = UIColor(red: 255/255, green: 255/255, blue: 51/255, alpha: 1)
            let c2 = UIColor(red: 255/255, green: 115/255, blue: 15/255, alpha: 1)
            let gradientLayer = CAGradientLayer()
            gradientLayer.frame = self.contactNearby.bounds
            gradientLayer.colors = [c1.CGColor, c2.CGColor]
            gradientLayer.startPoint = CGPoint(x: 0, y: 0)
            gradientLayer.endPoint = CGPoint(x: 1, y: 1)
            self.contactNearby.layer.addSublayer(gradientLayer)
            // Rounded
            self.contactNearby.cornerRadius = 25
            
            // Add the custom indicator
            //        let indicator = NVActivityIndicatorView(frame: CGRect.zero, type: NVActivityIndicatorType.LineScalePulseOut, color: UIColor.whiteColor(), padding: 0)
            //        self.gradientLogin.setCustomLoader(indicator, startAnimationBlock: { () in
            //            indicator.startAnimation()
            //            }, stopAnimationBlock: { () in
            //                indicator.stopAnimation()
            //        })
            
            // Add a shadow to the container view
            self.contactNearby.layer.masksToBounds = false
            self.contactNearby.layer.shadowColor = UIColor.blackColor().CGColor
            self.contactNearby.layer.shadowOffset = CGSize(width: 5, height: 5)
            self.contactNearby.layer.shadowOpacity = 0.5
            
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
            self.contactNearby.customTouchesBeganAnimations = touchesBegan
            
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
            self.contactNearby.customTouchesEndedAnimations = touchesEnded
            
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
            self.contactNearby.customLoadingAnimations = group
            
        }
    
        func setupEmergencyButtons() {
            self.emergency.setTitleFont(UIFont(name: "AmericanTypewriter-Bold", size: 18.0)!)
            
            // Create a gradiant layer
            let c1 = UIColor(red: 255/255, green: 115/255, blue: 15/255, alpha: 1)
            let c2 = UIColor(red: 255/255, green: 15/255, blue: 15/255, alpha: 1)
            let gradientLayer = CAGradientLayer()
            gradientLayer.frame = self.emergency.bounds
            gradientLayer.colors = [c1.CGColor, c2.CGColor]
            gradientLayer.startPoint = CGPoint(x: 0, y: 0)
            gradientLayer.endPoint = CGPoint(x: 1, y: 1)
            self.emergency.layer.addSublayer(gradientLayer)
            // Rounded
            self.emergency.cornerRadius = 25
            
            // Add the custom indicator
            //        let indicator = NVActivityIndicatorView(frame: CGRect.zero, type: NVActivityIndicatorType.LineScalePulseOut, color: UIColor.whiteColor(), padding: 0)
            //        self.gradientLogin.setCustomLoader(indicator, startAnimationBlock: { () in
            //            indicator.startAnimation()
            //            }, stopAnimationBlock: { () in
            //                indicator.stopAnimation()
            //        })
            
            // Add a shadow to the container view
            self.emergency.layer.masksToBounds = false
            self.emergency.layer.shadowColor = UIColor.blackColor().CGColor
            self.emergency.layer.shadowOffset = CGSize(width: 5, height: 5)
            self.emergency.layer.shadowOpacity = 0.5
            
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
            self.emergency.customTouchesBeganAnimations = touchesBegan
            
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
            self.emergency.customTouchesEndedAnimations = touchesEnded
            
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
            self.emergency.customLoadingAnimations = group
            
        }
>>>>>>> e1cfb1a6ea983470f91087042272a71d09fbbcfb
        
        func setupviewColor() {
            // self.view.setTitleFont(UIFont(name: "AmericanTypewriter-Bold", size: 18.0)!)
            
            // Create a gradiant layer
            let c1 = UIColor(red: 255/255, green: 115/255, blue: 15/255, alpha: 1)
            let c2 = UIColor(red: 255/255, green: 15/255, blue: 15/255, alpha: 1)
            let gradientLayer = CAGradientLayer()
            gradientLayer.frame = self.emergency.bounds
            gradientLayer.colors = [c1.CGColor, c2.CGColor]
            gradientLayer.startPoint = CGPoint(x: 0, y: 0)
            gradientLayer.endPoint = CGPoint(x: 1, y: 1)
            self.emergency.layer.addSublayer(gradientLayer)
            // Rounded
            self.emergency.cornerRadius = 25
            
            // Add the custom indicator
            //        let indicator = NVActivityIndicatorView(frame: CGRect.zero, type: NVActivityIndicatorType.LineScalePulseOut, color: UIColor.whiteColor(), padding: 0)
            //        self.gradientLogin.setCustomLoader(indicator, startAnimationBlock: { () in
            //            indicator.startAnimation()
            //            }, stopAnimationBlock: { () in
            //                indicator.stopAnimation()
            //        })
            
            // Add a shadow to the container view
            self.emergency.layer.masksToBounds = false
            self.emergency.layer.shadowColor = UIColor.blackColor().CGColor
            self.emergency.layer.shadowOffset = CGSize(width: 5, height: 5)
            self.emergency.layer.shadowOpacity = 0.5
            
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
            self.emergency.customTouchesBeganAnimations = touchesBegan
            
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
            self.emergency.customTouchesEndedAnimations = touchesEnded
            
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
            self.emergency.customLoadingAnimations = group
            
        }
        
        
        
        setupImnervousButtons()
        setupContactNearbyButtons()
        setupEmergencyButtons()
        


        
    }
    
    func didTapOnButton(sender: JBButton) {
        // Make sure the device can send text messages
        print("button tapped")
        
        if (messageComposer.canSendText())
        {
//            print("compose message")
            // Obtain a configured MFMessageComposeViewController
            let messageComposeVC = messageComposer.configuredMessageComposeViewController()
            
            // Present the configured MFMessageComposeViewController instance
            // Note that the dismissal of the VC will be handled by the messageComposer instance,
            // since it implements the appropriate delegate call-back
            presentViewController(messageComposeVC, animated: true, completion: nil)
        }
        else
        {
            print("I'm nervous")
            // Let the user know if his/her device isn't able to send text messages
            let errorAlert = UIAlertController(
                title: "Cannot Send Text Message",
                message: "Your device is not able to send text messages.",
                preferredStyle: .Alert)
            errorAlert.actions
        }
    }

    
<<<<<<< HEAD
    
    

    func setupContactNearbyButtons() {
        self.contactNearby.setTitleFont(UIFont(name: "AmericanTypewriter-Bold", size: 18.0)!)
        
        // Create a gradiant layer
        let c1 = UIColor(red: 255/255, green: 255/255, blue: 51/255, alpha: 1)
        let c2 = UIColor(red: 255/255, green: 115/255, blue: 15/255, alpha: 1)
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.contactNearby.bounds
        gradientLayer.colors = [c1.CGColor, c2.CGColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        self.contactNearby.layer.addSublayer(gradientLayer)
        // Rounded
        self.contactNearby.cornerRadius = 25
        
        // Add the custom indicator
        //        let indicator = NVActivityIndicatorView(frame: CGRect.zero, type: NVActivityIndicatorType.LineScalePulseOut, color: UIColor.whiteColor(), padding: 0)
        //        self.gradientLogin.setCustomLoader(indicator, startAnimationBlock: { () in
        //            indicator.startAnimation()
        //            }, stopAnimationBlock: { () in
        //                indicator.stopAnimation()
        //        })
        
        // Add a shadow to the container view
        self.contactNearby.layer.masksToBounds = false
        self.contactNearby.layer.shadowColor = UIColor.blackColor().CGColor
        self.contactNearby.layer.shadowOffset = CGSize(width: 5, height: 5)
        self.contactNearby.layer.shadowOpacity = 0.5
        
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
        self.contactNearby.customTouchesBeganAnimations = touchesBegan
        
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
        self.contactNearby.customTouchesEndedAnimations = touchesEnded
        
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
        self.contactNearby.customLoadingAnimations = group
   
    }

    func setupEmergencyButtons() {
        self.emergency.setTitleFont(UIFont(name: "AmericanTypewriter-Bold", size: 18.0)!)
        
        // Create a gradiant layer
        let c1 = UIColor(red: 255/255, green: 115/255, blue: 15/255, alpha: 1)
        let c2 = UIColor(red: 255/255, green: 15/255, blue: 15/255, alpha: 1)
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.emergency.bounds
        gradientLayer.colors = [c1.CGColor, c2.CGColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        self.emergency.layer.addSublayer(gradientLayer)
        // Rounded
        self.emergency.cornerRadius = 25
        
        // Add the custom indicator
        //        let indicator = NVActivityIndicatorView(frame: CGRect.zero, type: NVActivityIndicatorType.LineScalePulseOut, color: UIColor.whiteColor(), padding: 0)
        //        self.gradientLogin.setCustomLoader(indicator, startAnimationBlock: { () in
        //            indicator.startAnimation()
        //            }, stopAnimationBlock: { () in
        //                indicator.stopAnimation()
        //        })
        
        // Add a shadow to the container view
        self.emergency.layer.masksToBounds = false
        self.emergency.layer.shadowColor = UIColor.blackColor().CGColor
        self.emergency.layer.shadowOffset = CGSize(width: 5, height: 5)
        self.emergency.layer.shadowOpacity = 0.5
        
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
        self.emergency.customTouchesBeganAnimations = touchesBegan
        
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
        self.emergency.customTouchesEndedAnimations = touchesEnded
        
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
        self.emergency.customLoadingAnimations = group
        
    }
    
    func setupviewColor() {
       // self.view.setTitleFont(UIFont(name: "AmericanTypewriter-Bold", size: 18.0)!)
        
        // Create a gradiant layer
        let c1 = UIColor(red: 255/255, green: 115/255, blue: 15/255, alpha: 1)
        let c2 = UIColor(red: 255/255, green: 15/255, blue: 15/255, alpha: 1)
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.emergency.bounds
        gradientLayer.colors = [c1.CGColor, c2.CGColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        self.emergency.layer.addSublayer(gradientLayer)
        // Rounded
        self.emergency.cornerRadius = 25
        
        // Add the custom indicator
        //        let indicator = NVActivityIndicatorView(frame: CGRect.zero, type: NVActivityIndicatorType.LineScalePulseOut, color: UIColor.whiteColor(), padding: 0)
        //        self.gradientLogin.setCustomLoader(indicator, startAnimationBlock: { () in
        //            indicator.startAnimation()
        //            }, stopAnimationBlock: { () in
        //                indicator.stopAnimation()
        //        })
        
        // Add a shadow to the container view
        self.emergency.layer.masksToBounds = false
        self.emergency.layer.shadowColor = UIColor.blackColor().CGColor
        self.emergency.layer.shadowOffset = CGSize(width: 5, height: 5)
        self.emergency.layer.shadowOpacity = 0.5
        
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
        self.emergency.customTouchesBeganAnimations = touchesBegan
        
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
        self.emergency.customTouchesEndedAnimations = touchesEnded
        
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
        self.emergency.customLoadingAnimations = group
        
    }
    
    func didTapOnButton(sender: JBButton!){
        // Make sure the device can send text messages
        print("button tapped")
        
        if (messageComposer.canSendText())
        {
            //            print("compose message")
            // Obtain a configured MFMessageComposeViewController
            let messageComposeVC = messageComposer.configuredMessageComposeViewController()
            
            //            MFMessageComposeViewController().body += "\(locality)"
            
            // Present the configured MFMessageComposeViewController instance
            // Note that the dismissal of the VC will be handled by the messageComposer instance,
            // since it implements the appropriate delegate call-back
            presentViewController(messageComposeVC, animated: true, completion: nil)
        }
        else
        {
            
            let number = "347-232-1892"
            let url = NSURL(string: "tel://\(number)")!
            
            UIApplication.sharedApplication().openURL(url)
            print("I'm nervous")
            // Let the user know if his/her device isn't able to send text messages
            let errorAlert = UIAlertController(
                title: "Cannot Send Text Message",
                message: "Your device is not able to send text messages.",
                preferredStyle: .Alert)
            errorAlert.actions
        }
=======
>>>>>>> e1cfb1a6ea983470f91087042272a71d09fbbcfb
}

}