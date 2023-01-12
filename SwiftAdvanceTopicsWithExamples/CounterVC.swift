//
//  CounterVC.swift
//  SwiftAdvanceTopicsWithExamples
//
//  Created by Ankush on 11/01/23.
//

import Foundation
import UIKit

class CounterVC: UIViewController {
    
    @IBOutlet private weak var counterLbl: UILabel!
    @IBOutlet private weak var totalCountLbl: UILabel!
    
    private var counter: Int = 0
    private var totalCount: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func plusBtnAction(_ sender: Any) {
        
        self.counter += 1
        
        
        if self.counter % 3 == 0 {
            self.totalCount += 3
            
        }
        
        self.setData()
    }
    
    @IBAction func minusBtnAction(_ sender: Any) {
        
        if self.counter > 0 {
            if self.counter % 3 == 0 && self.totalCount == self.counter {
                self.totalCount -= 3
                self.counter -= 1
            } else {
                self.counter -= 1
            }
        }
        self.setData()
    }
    
    func setData(){
        self.counterLbl.text = "\(self.counter)"
        self.totalCountLbl.text = "\(self.totalCount)"
    }
}
