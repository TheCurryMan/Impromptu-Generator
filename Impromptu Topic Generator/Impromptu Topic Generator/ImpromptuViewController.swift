//
//  ImpromptuViewController.swift
//  SpeechCD
//
//  Created by Avinash Jain on 11/7/15.
//  Copyright © 2015 Avinash Jain. All rights reserved.
//

import UIKit

class ImpromptuViewController: UIViewController {
    
    var top = ""
    
    override func viewWillAppear(animated: Bool) {
        self.navigationItem.setHidesBackButton(true, animated: false)
        
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewWillDisappear(animated: Bool) {
        self.navigationItem.setHidesBackButton(false, animated: false)
        
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    
    @IBAction func concrete(sender: UIButton) {
        top = "Concrete"
        performSegueWithIdentifier("topics", sender: self)
        
    }
    
    @IBAction func abstract(sender: UIButton) {
        top = "Abstract"
        performSegueWithIdentifier("topics", sender: self)
        
        
    }
    
    @IBAction func quotes(sender: UIButton) {
        top = "Quotes"
        performSegueWithIdentifier("topics", sender: self)
        
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var vc = segue.destinationViewController as! ImpTopicViewController
        if segue.identifier == "topics" {
        
            vc.topic = top
        }
    }
    

    }



    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


