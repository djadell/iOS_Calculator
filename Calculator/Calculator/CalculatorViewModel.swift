//
//  CalculatorViewModel.swift
//  Calculator
//
//  Created by David Adell on 1/5/19.
//  Copyright © 2019 djadell. All rights reserved.
//

import Foundation

public final class CalculatorViewModel {
    
    //MARK: - Properties
    public var displayNumber : String
    private var number : Number
    private var isDotSet : Bool = false
    
    //MARK: - Obj Lifecycle
    init (number : Number) {
        self.number = number;
        self.displayNumber = "0"
    }
    
    //MARK: - Functions
    public func setClearAll ()
    {
        isDotSet = false
        self.number = Number ()
        setDisplayNumber(dNumber: self.number.num1)
    }
    
    public func setClear ()
    {
        isDotSet = false
        setDisplayNumber(dNumber: 0)
    }
    
    public func setDot()
    {
        if !isDotSet {
            isDotSet = true
            displayNumber += "."
        }
    }
    
    public func setNumber(sNumber: Int)
    {
        if displayNumber == "0" {
            displayNumber = ""
        }
        displayNumber += String(sNumber)
    }
    
    public func setOperand (sOperator: String)
    {
        if number.operand != "" {
            number.num2 = Double(displayNumber) ?? 0.0
            calculate(sInputOperator:sOperator)
        } else if sOperator != "=" {
            number.operand = sOperator
            number.num1 = Double(displayNumber) ?? 0.0
            setClear()
        }
    }
    
    //MARK - Private functions
    func calculate (sInputOperator: String)
    {
        switch number.operand {
        case "+":
            number.result = number.num1 + number.num2
        case "-":
            number.result = number.num1 - number.num2
        case "x":
            number.result = number.num1 * number.num2
        case "/":
            number.result = number.num1 / number.num2
        default:
            print("Error: Undefined operator!")
        }
        displayNumber = String(self.number.result)
        if  sInputOperator == "="{
            number.operand = ""
        }
    }
    
    func setDisplayNumber(dNumber : Double ){
        if dNumber.rounded(.up) == dNumber.rounded(.down) {
            self.displayNumber = String(Int(dNumber))
        } else {
            self.displayNumber = String(dNumber)
        }
    }
}
