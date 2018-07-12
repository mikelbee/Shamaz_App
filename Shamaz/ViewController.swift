//
//  ViewController.swift
//  Shamaz
//
//  Created by Michael Bartolay on 7/6/18.
//  Copyright © 2018 Michael Bartolay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let nouns = ["favorite meal", "job", "friend", "neighbor", "parents", "workout regiment", "self", "bank account", "physicality", "plans", "get-rich-quickly ideas"]
    
    let timepast = ["last week", "last month", "3 days ago", "10 years ago", "yesterday", "last year", "when you were a child", "this morning", "last night", "5 years ago", "when you were in kindergarten"]

    let timefuture = ["in the near future", "next week", "ten years from now", "when you are old", "tomorrow", "three days from now", "one hour later", "in five years", "next month", "in your deathbed", "a century later"]
    
    let playerNumber = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    
    @IBOutlet weak var storyPrompt: UILabel!
    
    @IBAction func generatePastStoryPrompt() {
        
        //generate random nouns
        let randomNounIndex = Int(arc4random_uniform(UInt32(nouns.count)))
        let randomNoun = nouns[randomNounIndex]
    
        
        //generate random timepast
        let randomTimepastIndex = Int(arc4random_uniform(UInt32(timepast.count)))
        let randomTimepast = timepast[randomTimepastIndex]
        
        
        let newStoryPrompt = "Describe your " + randomNoun + " " + randomTimepast + "."
        
        storyPrompt.text = newStoryPrompt
    }
    
    @IBAction func generateFutureStoryPrompt() {
        
        //generate random nouns
        let randomNounIndex = Int(arc4random_uniform(UInt32(nouns.count)))
        let randomNoun = nouns[randomNounIndex]
    
        
        //generate random timefuture
        let randomTimefutureIndex = Int(arc4random_uniform(UInt32(timefuture.count)))
        let randomTimefuture = timefuture[randomTimefutureIndex]
        
        let newStoryPrompt = "Describe your " + randomNoun + " " + randomTimefuture + "."
        
        storyPrompt.text = newStoryPrompt
    }
    
    @IBAction func generateNextPlayer() {
        
        //generate random playerNumber
        let randomPlayernumberIndex = Int(arc4random_uniform(UInt32(playerNumber.count)))
        let randomPlayernumber = playerNumber[randomPlayernumberIndex]
        
        let newPlayernumber = randomPlayernumber
        
        storyPrompt.text = newPlayernumber
        
    }
}

