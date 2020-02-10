//
//  ViewController.swift
//  HOL9
//
//  Created by admin on 2/7/20.
//  Copyright © 2020 Revature. All rights reserved.
//

import UIKit
import MessageUI

class ViewController: UIViewController,MFMailComposeViewControllerDelegate, UINavigationControllerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var enterEmail: UITextField!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var sendMail: UIButton!
    
    @IBAction func sendMail(_ sender: UIButton) {
        if MFMailComposeViewController.canSendMail(){
             let message:String = textView.text!
             let email:String = enterEmail.text!
             let composePicker = MFMailComposeViewController()
             composePicker.mailComposeDelegate = self
             composePicker.delegate = self
             composePicker.setToRecipients([email])
             composePicker.setSubject("New iPhone mail")
             composePicker.setMessageBody(message, isHTML: false)
             self.present(composePicker, animated: true, completion: nil)
           } else {
             self.showerrorMessage()
           }
         }
          
         func showerrorMessage(){
            let alert = UIAlertController(title: "Email could not send", message: "Check if your device has email set up", preferredStyle: .alert)
           let action = UIAlertAction(title: "Okay", style: .default, handler: nil)
           alert.addAction(action)
           self.present(alert,animated: true, completion:nil)
         }
         func mailComposeController(_ controller:MFMailComposeViewController, didFinishWith didFinishWithResult: MFMailComposeResult, error:Error?){
           switch didFinishWithResult {
           case .cancelled:
             print("Mail Cancelled")
             break
           case .saved:
             print("Mail saved")
             break
           case .failed:
             break
           case .sent:
             print("Mail sent")
             break
           }
            
           self.dismiss(animated: true, completion: nil)
        }
}

