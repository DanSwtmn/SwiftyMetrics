//
//  Memory.swift
//  SwiftyMetrics
//
//  Created by Dan Sweetman on 9/21/17.
//  Copyright © 2017 Dan Sweetman. All rights reserved.
//

import Foundation

class Memory {
    var startMem = UInt64()
    var endMem = UInt64()
    func report_memory() -> UInt64{
        var info = mach_task_basic_info()
        var count = mach_msg_type_number_t(MemoryLayout<mach_task_basic_info>.size)/4
        
        let kerr: kern_return_t = withUnsafeMutablePointer(to: &info) {
            $0.withMemoryRebound(to: integer_t.self, capacity: 1) {
                task_info(mach_task_self_,
                          task_flavor_t(MACH_TASK_BASIC_INFO),
                          $0,
                          &count)
            }
        }
        
        if kerr == KERN_SUCCESS {
            return info.resident_size
        }
        else {
            print("Error with task_info(): " +
                (String(cString: mach_error_string(kerr), encoding: String.Encoding.ascii) ?? "unknown error"))
            return 0
        }
    }
    func startMemory() {
        startMem = report_memory
    }
    func endMemory() -> UInt64{
        endMem = report_memory
        return endMem - startMem
    }
    func getMemory() -> UInt64{
        return report_memory
    }
}

