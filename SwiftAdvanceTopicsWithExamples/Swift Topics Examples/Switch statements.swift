//
//  ConditionalStatements.swift
//  SwiftAdvanceTopicsWithExamples
//
//  Created by Ankush on 11/01/23.
//

import Foundation


// REFERANCE - https://docs.swift.org/swift-book/LanguageGuide/ControlFlow.html
extension ExamplesVC {
    
    func whereExamples() {
        self.switchWithWhere()
        self.switchWithcompoundStatements()
        self.switchWithValueBounding()
        self.switchWithIntervalMatching()
    }
    
    //MARK: - SWITCH WITH WHERE
    func switchWithWhere() {
        print("\n ------------SWITCH WITH WHERE STATEMENT EXAMPLE-------------- \n ")
        
        let yetAnotherPoint = (1, -1)
        switch yetAnotherPoint {
        case let (x, y) where x == y:
            print("(\(x), \(y)) is on the line x == y")
        case let (x, y) where x == -y:
            print("(\(x), \(y)) is on the line x == -y")
        case let (x, y):
            print("(\(x), \(y)) is just some arbitrary point")
        }
    }
    
    //MARK: - Compound Statements Switch
    func switchWithcompoundStatements() {
        print("\n ------------SWITCH WITH COMPOUND STATEMENT EXAMPLE-------------- \n ")
        let someCharacter: Character = "e"
        switch someCharacter {
        case "a", "e", "i", "o", "u":
            print("\(someCharacter) is a vowel")
        case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
             "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
            print("\(someCharacter) is a consonant")
        default:
            print("\(someCharacter) isn't a vowel or a consonant")
        }
    }
    
    //MARK: - Value Bounding Switch
    func switchWithValueBounding() {
        print("\n ------------SWITCH WITH VALUE BOUNDING EXAMPLE-------------- \n ")
        let anotherPoint = (2, 0)
        switch anotherPoint {
        case (let x, 0):
            print("on the x-axis with an x value of \(x)")
        case (0, let y):
            print("on the y-axis with a y value of \(y)")
        case let (x, y):
            print("somewhere else at (\(x), \(y))")
        }
    }
    
    //MARK: - Interval Matching
    func switchWithIntervalMatching() {
        print("\n ------------SWITCH WITH INTERVAL MATCHING EXAMPLE-------------- \n ")
        
        let approximateCount = 62
        let countedThings = "moons orbiting Saturn"
        let naturalCount: String
        switch approximateCount {
        case 0:
            naturalCount = "no"
        case 1..<5:
            naturalCount = "a few"
        case 5..<12:
            naturalCount = "several"
        case 12..<100:
            naturalCount = "dozens of"
        case 100..<1000:
            naturalCount = "hundreds of"
        default:
            naturalCount = "many"
        }
        print("There are \(naturalCount) \(countedThings).")
    }
}
