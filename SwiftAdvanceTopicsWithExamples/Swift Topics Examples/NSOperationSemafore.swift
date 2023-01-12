//
//  NSOperationSemafore.swift
//  SwiftAdvanceTopicsWithExamples
//
//  Created by Ankush on 05/01/23.
//

import Foundation

extension ExamplesVC {
    
    func nsOperationSemaforeExample() {
        print("\n ------------NSOPERATION SEMAFORE EXAMPLE-------------- \n ")
        let queue = DispatchQueue(label: "SemaFore Example", attributes: .concurrent)
        let semaphore = DispatchSemaphore(value: 3)
        for i in 0...7 {
            queue.async(qos: .background) {
              let indexNumber = i + 1
              semaphore.wait()
              print("Downloading song", indexNumber)
              sleep(2)
              print("Downloaded song", indexNumber)
              semaphore.signal()
           }
        }
    }
}
