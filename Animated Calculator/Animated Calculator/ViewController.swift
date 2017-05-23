//
//  ViewController.swift
//  Animated Calculator
//
//  Created by Harsha Goli on 5/23/17.
//  Copyright © 2017 Harsha Goli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var button0: UIButton!

    @IBOutlet weak var buttonDecimal: UIButton!
    
    @IBOutlet weak var button1: UIButton!
    
    @IBOutlet weak var button2: UIButton!
    
    @IBOutlet weak var button3: UIButton!
    
    @IBOutlet weak var button4: UIButton!
    
    @IBOutlet weak var button5: UIButton!
    
    @IBOutlet weak var button7: UIButton!
    
    @IBOutlet weak var button6: UIButton!
    
    @IBOutlet weak var button8: UIButton!
    
    @IBOutlet weak var button9: UIButton!
    
    @IBOutlet weak var buttonClearScreen: UIButton!
    
    @IBOutlet weak var buttonDivide: UIButton!
    
    @IBOutlet weak var ButtonMultiply: UIButton!
    
    @IBOutlet weak var ButtonEquals: UIButton!
    
    @IBOutlet weak var ButtonPlus: UIButton!
    
    @IBOutlet weak var ButtonMinus: UIButton!
    
    @IBOutlet weak var ButtonPercentage: UIButton!
    
    @IBOutlet weak var ButtonDelete: UIButton!
    
    @IBOutlet weak var OutputScreen: UILabel!
    
    var stack:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Mark Actions
    @IBAction func PressedZero(_ sender: Any) {
        stack.append("0")
    }
    @IBAction func PressedOne(_ sender: Any) {
        stack.append("1")
    }
    @IBAction func PressedTwo(_ sender: Any) {
        stack.append("2")
    }
    @IBAction func Pressed3(_ sender: Any) {
        stack.append("3")
    }
    @IBAction func PressedFour(_ sender: Any) {
        stack.append("4")
    }
    @IBAction func PressedFive(_ sender: Any) {
        stack.append("5")
    }
    @IBAction func PressedSix(_ sender: Any) {
        stack.append("6")
    }
    @IBAction func PressedSeven(_ sender: Any) {
        stack.append("7")
    }
    @IBAction func PressedEight(_ sender: Any) {
        stack.append("8")
    }
    @IBAction func PressedNine(_ sender: Any) {
        stack.append("9")
    }
    
    @IBAction func PressedDecimal(_ sender: Any) {
        if(stack.contains(".")){
            return
        }
        else{
            stack.append(".")
        }
    }
    
    
    
}

