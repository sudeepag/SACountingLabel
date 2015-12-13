//
//  ViewController.swift
//  SACountingLabel
//
//  Created by Sudeep Agarwal on 12/13/2015.
//  Copyright (c) 2015 Sudeep Agarwal. All rights reserved.
//

import UIKit
import SACountingLabel

class ViewController: UIViewController {
    
    @IBOutlet var intLabel: SACountingLabel!
    @IBOutlet var floatLabel: SACountingLabel!
    @IBOutlet var customLabel: SACountingLabel!
    @IBOutlet var durationSlider: UISlider!
    @IBOutlet var durationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countForAnimationType(.EaseOut)
        
    }
    
    func countForAnimationType(type: SACountingLabel.AnimationType) {
        intLabel.countFrom(0, to: 349, withDuration: NSTimeInterval(durationSlider.value), andAnimationType: type, andCountingType: .Int)
        
        floatLabel.countFrom(0, to: 1.0, withDuration: NSTimeInterval(durationSlider.value), andAnimationType: type, andCountingType: .Float)
        
        customLabel.countFrom(0, to: 100.0, withDuration: NSTimeInterval(durationSlider.value), andAnimationType: type, andCountingType: .Custom)
        customLabel.format = "%.1f%%"
    }
    
    @IBAction func buttonSelected(sender: AnyObject) {
        switch sender.tag {
        case 0:
            countForAnimationType(.Linear)
        case 1:
            countForAnimationType(.EaseIn)
        case 2:
            countForAnimationType(.EaseOut)
        case 3:
            countForAnimationType(.EaseInOut)
        default:
            break
        }
    }
    
    @IBAction func sliderChanged(sender: AnyObject) {
        durationLabel.text = String(format: "Duration: %.1f", durationSlider.value)
    }

}

