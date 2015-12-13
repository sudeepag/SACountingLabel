//
//  SACountingLabel.swift
//  Pods
//
//  Created by Sudeep Agarwal on 12/13/15.
//
//

import Foundation
import UIKit

public class SACountingLabel: UILabel {
    
    let kCounterRate: Float = 3.0
    
    public enum AnimationType {
        case Linear
        case EaseIn
        case EaseOut
        case EaseInOut
    }
    
    public enum CountingType {
        case Int
        case Float
        case Custom
    }
    
    var start: Float = 0.0
    var end: Float = 0.0
    var timer: NSTimer?
    var progress: NSTimeInterval!
    var lastUpdate: NSTimeInterval!
    var duration: NSTimeInterval!
    var countingType: CountingType!
    var animationType: AnimationType!
    public var format: String?
    
    var currentValue: Float {
        if (progress >= duration) {
            return end
        }
        let percent = Float(progress / duration)
        let update = updateCounter(percent)
        return start + (update * (end - start));
    }
    
    public func countFrom(fromValue: Float, to toValue: Float, withDuration duration: NSTimeInterval, andAnimationType aType: AnimationType, andCountingType cType: CountingType) {
        
        // Set values
        self.start = fromValue
        self.end = toValue
        self.duration = duration
        self.countingType = cType
        self.animationType = aType
        self.progress = 0.0
        self.lastUpdate = NSDate.timeIntervalSinceReferenceDate()
        
        // Invalidate and nullify timer
        killTimer()
        
        // Handle no animation
        if (duration == 0.0) {
            updateText(toValue)
            return
        }
        
        // Create timer
        timer = NSTimer.scheduledTimerWithTimeInterval(0.01, target: self, selector: "updateValue", userInfo: nil, repeats: true)
    }
    
    func updateText(value: Float) {
        switch countingType! {
        case .Int:
            self.text = "\(Int(value))"
        case .Float:
            self.text = String(format: "%.2f", value)
        case .Custom:
            if let format = format {
                self.text = String(format: format, value)
            } else {
                self.text = String(format: "%.2f", value)
            }
        }
    }
    
    func updateValue() {
        
        // Update the progress
        let now = NSDate.timeIntervalSinceReferenceDate()
        progress = progress + (now - lastUpdate)
        lastUpdate = now
        
        // End when timer is up
        if (progress >= duration) {
            killTimer()
            progress = duration
        }
        
        updateText(currentValue)
        
    }
    
    func killTimer() {
        timer?.invalidate()
        timer = nil
    }
    
    func updateCounter(t: Float) -> Float {
        switch animationType! {
        case .Linear:
            return t
        case .EaseIn:
            return powf(t, kCounterRate)
        case .EaseOut:
            return 1.0 - powf((1.0 - t), kCounterRate)
        case .EaseInOut:
            var t = t
            var sign = 1.0;
            let r = Int(kCounterRate)
            if (r % 2 == 0) {
                sign = -1.0
            }
            t *= 2;
            if (t < 1) {
                return 0.5 * powf(t, kCounterRate)
            } else {
                return Float(sign * 0.5) * (powf(t-2, kCounterRate) + Float(sign * 2))
            }
            
        }
    }
    
    
}
