//
//  Timer.swift
//  SwiftyMetrics
//
//  Created by Dan Sweetman on 9/24/17.
//  Copyright © 2017 Dan Sweetman. All rights reserved.
//

import Foundation

class Timer {
    var timeStampStart = Double()
    var timeStampEnd = Double()
    
    func startTimer(){
        timeStampStart = NSDate().timeIntervalSince1970
    }
    func endTimer() -> Double{
        timeStampEnd = NSDate().timeIntervalSince1970
        let total = timeStampEnd - timeStampStart
        return total
    }
}
