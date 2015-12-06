//
//  DisplayViewController.swift
//  Impromptu Topic Generator
//
//  Created by Avinash Jain on 12/5/15.
//  Copyright © 2015 Avinash Jain. All rights reserved.
//

import UIKit

class DisplayViewController: UIViewController {
    
    var topic = ""

    @IBOutlet var topicLabel: UILabel!
    
    @IBOutlet var timerLabel: UILabel!
    
    @IBOutlet var titleLabel: UILabel!
    
    var secondsLeft = 12
    var minutes = 2
    var seconds = 0
    
    var prepTime = true
    var pause = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var nameOfString = topic
        
        nameOfString.replaceRange(nameOfString.startIndex...nameOfString.startIndex, with: String(nameOfString[nameOfString.startIndex]).capitalizedString)
        
        topicLabel.text = "Topic: " + nameOfString

        // Do any additional setup after loading the view.
        
        var timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "countdown", userInfo: nil, repeats: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func countdown() {
        
        if pause == false && secondsLeft > 0 {
    
        secondsLeft--
        if secondsLeft == 0 && prepTime == true{
            prepTime = false
            secondsLeft = 12
            
            self.titleLabel.text = "Speak!"
            self.view.backgroundColor = UIColor(red:0.20, green:0.60, blue:1.00, alpha:1.0)
            pause(self)
        
        }
        
        
        if secondsLeft == 10 {
            self.view.backgroundColor = UIColor.redColor()
        }
            
        if secondsLeft == 0 && prepTime == false {
            titleLabel.text = "Good Job"
            self.view.backgroundColor = UIColor(red:0.20, green:0.60, blue:1.00, alpha:1.0)

            }
    
        
        minutes = (self.secondsLeft % 3600) / 60
        seconds = (self.secondsLeft % 3600) % 60
       
        
        timerLabel.text = String(format: "%d:%02d", minutes, seconds) //String(minutes) + ":" + String(seconds)
            
        }
    }
    
    @IBAction func pause(sender: AnyObject) {
        self.pause = true
    }
    
    @IBAction func play(sender: AnyObject) {
        self.pause = false
    }
    
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
