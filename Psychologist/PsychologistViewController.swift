//
//  ViewController.swift
//  Psychologist
//
//  Created by guoliangwei on 4/6/15.
//  Copyright (c) 2015 GLW1900. All rights reserved.
//

import UIKit

class PsychologistViewController: UIViewController {

    
    @IBAction func nothing(sender: UIButton) {
        performSegueWithIdentifier("nothing", sender: nil)
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var destination = segue.destinationViewController as? UIViewController
        if let navCon = destination as? UINavigationController {
            destination = navCon.visibleViewController
        }
        if let hvc = destination as? HappinessViewController {
            if let identiifer = segue.identifier {
                switch identiifer {
                case "sad":
                    hvc.happiness = 0
                case "happy":
                    hvc.happiness = 100
                case "nothing":
                    hvc.happiness = 25
                default:
                    hvc.happiness = 50
                }
            }
        }
    }

}

