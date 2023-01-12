//
//  NSOperation Queue example.swift
//  SwiftAdvanceTopicsWithExamples
//
//  Created by Ankush on 05/01/23.
//

import Foundation
import UIKit

extension ExamplesVC {
    
    func nsOperationQueueExample() {
        print("\n ------------OPERATION QUEUE EXAMPLE-------------- \n ")
        let queue = OperationQueue()
        let operation1 = BlockOperation(block: {
            Thread.sleep(forTimeInterval: 2.0)
        })
        
        operation1.completionBlock = {
            print("Operation 1 completed")
        }
        queue.addOperation(operation1)
        
        let operation2 = BlockOperation(block: {
            Thread.sleep(forTimeInterval: 3.0)
        })
        
        operation2.completionBlock = {
            print("Operation 2 completed")
        }
        queue.addOperation(operation2)
        
        
        let operation3 = BlockOperation(block: {
            Thread.sleep(forTimeInterval: 1.0)
        })
        
        operation3.completionBlock = {
            print("Operation 3 completed")
        }
        queue.addOperation(operation3)
        
        let operation4 = BlockOperation(block: {
            Thread.sleep(forTimeInterval: 1.5)
        })
        
        operation4.completionBlock = {
            print("Operation 4 completed")
        }
        queue.addOperation(operation4)
    }
}
