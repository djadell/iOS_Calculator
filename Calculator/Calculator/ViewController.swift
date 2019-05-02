//
//  ViewController.swift
//  Calculator
//
//  Created by David Adell on 1/5/19.
//  Copyright © 2019 djadell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var iLabelDisplay: UILabel!
    @IBOutlet weak var iSegmentedTypeConversor: UISegmentedControl!
    //MARK: Buttons
    @IBOutlet weak var iButtonClear: UIButton!
    @IBOutlet weak var iButtonAllClear: UIButton!
    @IBOutlet weak var iButtonDiv: UIButton!
    @IBOutlet weak var iButtonMul: UIButton!
    @IBOutlet weak var iButtonSub: UIButton!
    @IBOutlet weak var iButtonAdd: UIButton!
    @IBOutlet weak var iButtonEquals: UIButton!
    @IBOutlet weak var iButtonDot: UIButton!
    
    //MARK: Hexadecimal
    @IBOutlet weak var iViewHexButtons: UIView!
    
    private var calculatorViewModel = CalculatorViewModel(number : Number())
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        printNumber()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    //MARK: - Dav pending to move ViewModel!
    func printNumber() {
        iLabelDisplay.text = calculatorViewModel.displayNumber
    }
    
    //MARK: - IBActions
    @IBAction func onTypeConversionTouched(_ sender: UISegmentedControl)
    {
        switch iSegmentedTypeConversor.selectedSegmentIndex {
        case 0:
            iViewHexButtons.isHidden = true
        case 1:
            iViewHexButtons.isHidden = false
        case 2:
            iViewHexButtons.isHidden = true
        default:
            iViewHexButtons.isHidden = true
        }
    }
    
    //MARK: IBActions Operations
    @IBAction func onOperandPressed(_ sender: UIButton)
    {
        let button: UIButton = sender 
        calculatorViewModel.setOperand(sOperator: button.titleLabel!.text!)
        printNumber()
    }
    
    @IBAction func onButtonAllClearPressed(_ sender: UIButton)
    {
        calculatorViewModel.setClearAll()
        printNumber()
    }
    
    @IBAction func onButtonClearPressed(_ sender: UIButton)
    {
        calculatorViewModel.setClear()
        printNumber()
    }
    
    //MARK: IBActions Values
    @IBAction func onButtonDotPressed(_ sender: UIButton)
    {
        calculatorViewModel.setDot()
        printNumber()
    }
    
    @IBAction func onNumberPressed(_ sender: UIButton)
    {
        if sender.tag >= 0 && sender.tag <= 9 {
            calculatorViewModel.setNumber(sNumber: sender.tag)
            printNumber()
        }
    }
    
    //MARK: IBActions Hexadecimal
    @IBAction func onHexNumberPressed(_ sender: UIButton)
    {
        
    }
    
    
}

