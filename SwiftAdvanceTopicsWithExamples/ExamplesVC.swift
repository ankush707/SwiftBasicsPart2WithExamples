//
//  ExamplesVC.swift
//  SwiftAdvanceTopicsWithExamples
//
//  Created by Ankush on 05/01/23.
//

import UIKit

class ExamplesVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.examples()
    }

}

extension ExamplesVC {
    
    func examples() {
        self.arrayCall()
        self.closuresExamples()
        self.functionsExamples()
        self.ifAndIfLetStatementExample()
        self.loopsExample()
        self.whereExamples()
        self.someAnyKeywords()
        self.genericWithInout()
        self.opaqueTypesExample()
        self.typeCastingExample()
        self.properyWrapperExample()
        self.simpleGenericExamples()
        self.computedReadOnlyPropertiesObserversExample()
        
        
        self.nsOperationQueueExample()
        self.nsOperationSemaforeExample()
        
    }
}
