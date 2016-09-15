
//
//  MessageComposer.swift
//  ADIONA
//
//  Created by Janet Zhang on 9/10/16.
//  Copyright © 2016 Laticia Chance. All rights reserved.
//

import UIKit
import Foundation
import MessageUI
let textMessageRecipients = ["1-347-345-9699"] // for pre-populating the recipients list (optional, depending on your needs)
class MessageComposer: NSObject, MFMessageComposeViewControllerDelegate {
    
   // var instanceForLocation = Location()
    
    // A wrapper function to indicate whether or not a text message can be sent from the user's device
    func canSendText() -> Bool {
        return MFMessageComposeViewController.canSendText()
    }
    
    // Configures and returns a MFMessageComposeViewController instance
    func configuredMessageComposeViewController() -> MFMessageComposeViewController {
        let messageComposeVC = MFMessageComposeViewController()
        messageComposeVC.messageComposeDelegate = self  //  Make sure to set this property to self, so that the controller can be dismissed!
        messageComposeVC.recipients = textMessageRecipients

        messageComposeVC.body = "Hey I'm nervous...here's my location 40.751603, -74.006519"
        return messageComposeVC
    }
    
    // MFMessageComposeViewControllerDelegate callback - dismisses the view controller when the user is finished with it
    func messageComposeViewController(controller: MFMessageComposeViewController, didFinishWithResult result: MessageComposeResult) {
        controller.dismissViewControllerAnimated(true, completion: nil)
    }
}