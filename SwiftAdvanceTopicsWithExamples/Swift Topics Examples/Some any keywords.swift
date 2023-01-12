//
//  Some any keywords.swift
//  SwiftAdvanceTopicsWithExamples
//
//  Created by Ankush on 10/01/23.
//

import Foundation
import UIKit

//Group : - A type that collects multiple instances of a content type — like views, scenes, or commands — into a single unit.

//Some - is used for shorthand/Cleaner Way of defining of Generic type as shown in example

extension ExamplesVC {
    
    func someAnyKeywords() {
        print("\n ------------SOME KEYWORD EXAMPLE-------------- \n ")
        
        let employeesArr = ["Ankush", "Arpit", "Ankur"]
        let salaryArr = [10, 9, 8]
        
        let empolyeeData : EmployeeData = EmployeeData()
        empolyeeData.employees.append(contentsOf: employeesArr)
        empolyeeData.salary.append(contentsOf: salaryArr)
        print("\n ------------Printing data without some keyword-------------- \n ")
        self.printEmployeesAndSalary(arrayData: empolyeeData)
        print("\n ------------Printing data with some keyword-------------- \n ")
        self.printEmployeesAndSalaryWithSome(arrayData: empolyeeData)
    }
    
    func printEmployeesAndSalary<T: SomeAnyProtocol>(arrayData: T) {
        
        for obj in arrayData.employees {
            print(obj)
        }
        
        for obj in arrayData.salary {
            print(obj)
        }
    }
    
    func printEmployeesAndSalaryWithSome(arrayData: some SomeAnyProtocol) {
        
        for obj in arrayData.employees {
            print(obj)
        }
        
        for obj in arrayData.salary {
            print(obj)
        }
    }
}

protocol SomeAnyProtocol {
    associatedtype Employee
    associatedtype Salary
    
    var employees: [Employee] { get }
    var salary: [Salary] { get }
}

class EmployeeData: SomeAnyProtocol {
    var employees: Array<String> = []
    
    var salary: Array<Int> = []
    
    typealias Employee = String
    
    typealias Salary = Int
    
    
}
