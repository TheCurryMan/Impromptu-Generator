//
//  ImpTopicViewController.swift
//  SpeechCD
//
//  Created by Avinash Jain on 11/7/15.
//  Copyright © 2015 Avinash Jain. All rights reserved.
//

import UIKit

class ImpTopicViewController: UIViewController {
    
    var topic = ""
    
    var finalTopic = ""
    
    @IBOutlet var topicName: UILabel!
    
    @IBOutlet var button1t: UIButton!
  
    @IBOutlet var button2t: UIButton!
    
    @IBOutlet var button3t: UIButton!
    
    @IBOutlet var topicLabel: UILabel!
    
    
    @IBAction func button1(sender: UIButton) {
        finalTopic = self.button1t.titleLabel!.text!
        performSegueWithIdentifier("display", sender: self)
    }
    
    @IBAction func button2(sender: UIButton) {
        finalTopic = self.button2t.titleLabel!.text!
        performSegueWithIdentifier("display", sender: self)
    }
    
    @IBAction func button3(sender: UIButton) {
        finalTopic = self.button3t.titleLabel!.text!
        performSegueWithIdentifier("display", sender: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topicLabel.text = topic
        
        if topic == "Concrete" {
        
        let url = NSURL(string: "https://www.randomlists.com/nouns")
        
        var nounArr = [""]
        nounArr.removeAll()
        
        
        
        if url != nil {
            
            let task = NSURLSession.sharedSession().dataTaskWithURL(url!, completionHandler: { (data, response, error) -> Void in
                
                let urlError = false
                
                
                
                if error == nil {
                    
                    
                    
                    let urlContent = NSString(data: data!, encoding: NSUTF8StringEncoding) as NSString!
                    print(urlContent)
                    
                    var nounArray = [""]
                    
                    var urlContentArray = urlContent.componentsSeparatedByString("\'crux\'>")
                    
                    for (var i = 1; i < urlContentArray.count; i = i + 2) {
                        var val1 : String = urlContentArray[i]
                        var val2 = val1.componentsSeparatedByString("</span>")
                        var val3 = val2[0]
                        
                        nounArray.append(val3)
                    }
                    
                    print(nounArray)
                    
                    for (var i = 0; i < 4; i++) {
                        
                        
                        
                        nounArr.append(nounArray[i])
                        
                        
                        
                    }
                    
                    
                    
                    
                    dispatch_async(dispatch_get_main_queue()) {
                        
                        if urlError == true {
                            
                            print("error")
                            
                        } else {
                            
                            nounArr.removeAtIndex(0)
                            var arr = [""]
                            arr.removeAtIndex(0)
                    
                            for final in nounArr {
                                var noun1 = final
                            noun1.replaceRange(noun1.startIndex...noun1.startIndex, with: String(noun1[noun1.startIndex]).capitalizedString)
                                arr.append(noun1)
                            }
                            
                            self.button1t.setTitle(arr[0], forState: .Normal)
                            self.button2t.setTitle(arr[1], forState: .Normal)
                            self.button3t.setTitle(arr[2], forState: .Normal)
                            
                            print(nounArr)
                            
                        }
                        
                        
                        
                    }
                }
                
            })
            
            task.resume()
            
            
        }
            
        }
        
        // This is the next if statement
        
        else if topic == "Abstract" {
            
            var list = ["Beauty", "Bravery", "Brilliance", "Brutality", "Calm", "Charity", "Coldness", "Compassion", "Confidence", "Contentment", "Courage", "Curiosity", "Dedication", "Determination", "Ego", "Elegance", "Enthusiasm", "Envy", "Evil", "Fear ", "Generosity", "Goodness", "Graciousness", "Hatred", "Honesty", "Honor ", "Hope", "Humility", "Humor ", "Insanity", "Integrity", "Intelligence ", "Jealousy ", "Kindness", "Loyalty", "Maturity", "Patience", "Perseverance", "Sanity", "Self-control", "Sensitivity", "Sophistication", "Stupidity", "Sympathy", "Talent", "Tolerance", "Trust", "Warmth", "Weakness", "Wisdom", "Wit", "Adoration", "Amazement", "Anger ", "Anxiety", "Apprehension", "Clarity", "Delight", "Despair ", "Disappointment", "Disbelief ", "Excitement", "Fascination", "Friendship", "Grief ", "Happiness", "Hate", "Helpfulness", "Helplessness", "Infatuation", "Joy ", "Love", "Misery", "Pain ", "Pleasure", "Power ", "Pride", "Relaxation", "Relief ", "Romance", "Sadness", "Satisfaction", "Silliness", "Sorrow", "Strength", "Surprise", "Tiredness", "Uncertainty", "Wariness", "Weariness", "Worry", "Ability", "Adventure", "Artistry", "Awe", "Belief ", "Chaos", "Comfort", "Communication", "Consideration", "Crime", "Culture", "Customer service", "Death", "Deceit", "Defeat", "Democracy", "Dexterity", "Dictatorship", "Disquiet", "Disturbance", "Dreams", "Energy", "Enhancement", "Failure", "Faith", "Faithfulness", "Faithlessness", "Favoritism", "Forgiveness", "Fragility", "Frailty", "Freedom", "Gossip", "Grace", "Hearsay", "Homelessness", "Hurt", "Idea", "Idiosyncrasy", "Imagination", "Impression", "Improvement", "Inflation", "Information", "Justice", "Knowledge", "Laughter ", "Law", "Liberty", "Life", "Loss", "Luck", "Luxury", "Memory", "Mercy", "Motivation", "Movement", "Need", "Omen", "Opinion", "Opportunism", "Opportunity", "Parenthood", "Patriotism", "Peace", "Peculiarity", "Poverty", "Principle", "Reality", "Redemption", "Refreshment", "Riches", "Rumor ", "Service", "Shock", "Skill", "Slavery", "Sleep", "Sparkle", "Speculation", "Speed", "Strictness", "Submission", "Success", "Thought", "Thrill", "Truth", "Unemployment", "Unreality", "Victory", "Wealth"]
        
            list.shuffleInPlace()
        
            self.button1t.setTitle(list[0], forState: .Normal)
            self.button2t.setTitle(list[1], forState: .Normal)
            self.button3t.setTitle(list[2], forState: .Normal)
  

            
        
        }
        
        else {
            
            let url = NSURL(string: "http://www.quotationspage.com/random.php3")
            
            var nounArr = [""]
            nounArr.removeAll()
            
            
            
            if url != nil {
                
                let task = NSURLSession.sharedSession().dataTaskWithURL(url!, completionHandler: { (data, response, error) -> Void in
                    
                    let urlError = false
                    
                    
                    
                    if error == nil {
                        
                        
                        
                        let urlContent = NSString(data: data!, encoding: NSUTF8StringEncoding) as NSString!
                        print(urlContent)
                        
                        var nounArray = [""]
                        
                        var urlContentArray = urlContent.componentsSeparatedByString("<dt class=\"quote\">")
                        
                        for (var i = 1; i < urlContentArray.count; i = i + 2) {
                            var val1 : String = urlContentArray[i]
                            var val2 = val1.componentsSeparatedByString(".html\">")
                            var val3 = val2[1]
                            var val4 = val3.componentsSeparatedByString("</a> </dt><dd class")
                            var val5 = val4[0]
                            
                            nounArray.append(val5)
                        }
                        
                        print(nounArray)
                        
                        for (var i = 0; i < 4; i++) {
                            
                        
                            
                            nounArr.append(nounArray[i])
                            
                            
                            
                        }
                        
                        
                        
                        
                        dispatch_async(dispatch_get_main_queue()) {
                            
                            if urlError == true {
                                
                                print("error")
                                
                            } else {
                                
                                nounArr.removeAtIndex(0)
                                
                                self.button1t.setTitle(nounArr[0], forState: .Normal)
                                self.button2t.setTitle(nounArr[1], forState: .Normal)
                                self.button3t.setTitle(nounArr[2], forState: .Normal)
                                
                                print(nounArr)
                                
                            }
                            
                            
                            
                        }
                    }
                    
                })
                
                task.resume()
                
                
            }

        
            
        
        }
        
        
        
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "display" {
        
            var vc = segue.destinationViewController as! DisplayViewController
            
            vc.topic = finalTopic
            
        
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

}

extension MutableCollectionType where Index == Int {
    /// Shuffle the elements of `self` in-place.
    mutating func shuffleInPlace() {
        // empty and single-element collections don't shuffle
        if count < 2 { return }
        
        for i in 0..<count - 1 {
            let j = Int(arc4random_uniform(UInt32(count - i))) + i
            guard i != j else { continue }
            swap(&self[i], &self[j])
        }
    }
}

