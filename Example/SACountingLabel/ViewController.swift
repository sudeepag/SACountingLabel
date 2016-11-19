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
        
        countForAnimationType(.easeOut)
        
    }
    
    func countForAnimationType(_ type: SACountingLabel.AnimationType) {
        intLabel.countFrom(0, to: 349, withDuration: TimeInterval(durationSlider.value), andAnimationType: type, andCountingType: .int)
        
        floatLabel.countFrom(0, to: 1.0, withDuration: TimeInterval(durationSlider.value), andAnimationType: type, andCountingType: .float)
        
        customLabel.countFrom(0, to: 100.0, withDuration: TimeInterval(durationSlider.value), andAnimationType: type, andCountingType: .custom)
        customLabel.format = "%.1f%%"
    }
    
    @IBAction func buttonSelected(_ sender: AnyObject) {
        switch sender.tag {
        case 0:
            countForAnimationType(.linear)
        case 1:
            countForAnimationType(.easeIn)
        case 2:
            countForAnimationType(.easeOut)
        case 3:
            countForAnimationType(.easeInOut)
        default:
            break
        }
    }
    
    @IBAction func sliderChanged(_ sender: AnyObject) {
        durationLabel.text = String(format: "Duration: %.1f", durationSlider.value)
    }

}

