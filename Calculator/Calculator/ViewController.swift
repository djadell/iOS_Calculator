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
    @IBOutlet weak var iButton0: UIButton!
    @IBOutlet weak var iButton1: UIButton!
    @IBOutlet weak var iButton2: UIButton!
    @IBOutlet weak var iButton3: UIButton!
    @IBOutlet weak var iButton4: UIButton!
    @IBOutlet weak var iButton5: UIButton!
    @IBOutlet weak var iButton6: UIButton!
    @IBOutlet weak var iButton7: UIButton!
    @IBOutlet weak var iButton8: UIButton!
    @IBOutlet weak var iButton9: UIButton!
    
    //MARK: Buttons Hexadecimal
    @IBOutlet weak var iViewHexButtons: UIView!
    @IBOutlet weak var iButtonA: UIButton!
    @IBOutlet weak var iButtonB: UIButton!
    @IBOutlet weak var iButtonC: UIButton!
    @IBOutlet weak var iButtonD: UIButton!
    @IBOutlet weak var iButtonE: UIButton!
    @IBOutlet weak var iButtonF: UIButton!
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
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
    @IBAction func onButtonEqualsPressed(_ sender: Any)
    {
        
    }
    
    @IBAction func onButtonAddPressed(_ sender: Any)
    {
        
    }
    
    @IBAction func onButtonSubPressed(_ sender: Any)
    {
        
    }
    
    @IBAction func onButtonMulPressed(_ sender: Any)
    {
        
    }
    
    @IBAction func onButtonDivPressed(_ sender: Any)
    {
        
    }
    
    @IBAction func onButtonAllClearPressed(_ sender: Any)
    {
        
    }
    
    @IBAction func onButtonClearPressed(_ sender: Any)
    {
        
    }
    
    //MARK: IBActions Values
    @IBAction func onButtonDotPressed(_ sender: Any)
    {
        
    }
    
    @IBAction func onButton0Pressed(_ sender: Any)
    {
        
    }
    
    @IBAction func onButton1Pressed(_ sender: Any)
    {
        
    }
    
    @IBAction func onButton2Pressed(_ sender: Any)
    {
        
    }
    
    @IBAction func onButton3Pressed(_ sender: Any)
    {
        
    }
    
    @IBAction func onButton4Pressed(_ sender: Any)
    {
        
    }
    
    @IBAction func onButton5Pressed(_ sender: Any)
    {
        
    }
    
    @IBAction func onButton6Pressed(_ sender: Any)
    {
        
    }
    
    @IBAction func onButton7Pressed(_ sender: Any)
    {
        
    }
    
    @IBAction func onButton8Pressed(_ sender: Any)
    {
        
    }
    
    @IBAction func onButton9Pressed(_ sender: Any)
    {
        
    }
    
    //MARK: IBActions Hexadecimal
    @IBAction func onButtonAPressed(_ sender: Any)
    {
        
    }
    
    @IBAction func onButtonBPressed(_ sender: Any)
    {
        
    }
    
    @IBAction func onButtonCPressed(_ sender: Any)
    {
        
    }
    
    @IBAction func onButtonDPressed(_ sender: Any)
    {
        
    }
    
    @IBAction func onButtonEPressed(_ sender: Any)
    {
        
    }
    
    @IBAction func onButtonFPressed(_ sender: Any)
    {
        
    }
    
}

