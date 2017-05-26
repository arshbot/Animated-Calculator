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
    
    @IBOutlet weak var buttonMultiply: UIButton!
    
    @IBOutlet weak var buttonEquals: UIButton!
    
    @IBOutlet weak var buttonPlus: UIButton!
    
    @IBOutlet weak var buttonMinus: UIButton!
    
    @IBOutlet weak var buttonPercentage: UIButton!
    
    @IBOutlet weak var buttonDelete: UIButton!
    
    @IBOutlet weak var outputScreen: UILabel!
    
    @IBOutlet weak var equation: UILabel!
    
    var enteredNum:String = ""
    var stack:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        outputScreen.text = "0"
        equation.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func constructEquation(){
        var eq = ""
        for s in stack{
            eq += s as! String
        }
        equation.text = eq
    }

    //Mark Actions
    @IBAction func pressedZero(_ sender: Any) {
        enteredNum.append("0")
        outputScreen.text = enteredNum
        
    }
    
    @IBAction func pressedOne(_ sender: Any) {
        enteredNum.append("1")
        outputScreen.text = enteredNum

    }
    
    @IBAction func pressedTwo(_ sender: Any) {
        enteredNum.append("2")
        outputScreen.text = enteredNum

    }
    
    @IBAction func pressed3(_ sender: Any) {
        enteredNum.append("3")
        outputScreen.text = enteredNum

    }
    
    @IBAction func pressedFour(_ sender: Any) {
        enteredNum.append("4")
        outputScreen.text = enteredNum

    }
    
    @IBAction func pressedFive(_ sender: Any) {
        enteredNum.append("5")
        outputScreen.text = enteredNum

    }
    
    @IBAction func pressedSix(_ sender: Any) {
        enteredNum.append("6")
        outputScreen.text = enteredNum

    }
    
    @IBAction func pressedSeven(_ sender: Any) {
        enteredNum.append("7")
        outputScreen.text = enteredNum

    }
    
    @IBAction func pressedEight(_ sender: Any) {
        enteredNum.append("8")
        outputScreen.text = enteredNum

    }
    
    @IBAction func pressedNine(_ sender: Any) {
        enteredNum.append("9")
        outputScreen.text = enteredNum

    }
    
    @IBAction func pressedDecimal(_ sender: Any) {
        if(enteredNum.contains(".")){
            return
        }
        else{
            enteredNum.append(".")
        }
    }
    
    @IBAction func add(_ sender: Any) {
        if(enteredNum != ""){
            stack.append(enteredNum)
            stack.append("+")
            constructEquation()
            enteredNum = ""

        }
        else {
            return
        }
    }
    
    @IBAction func minus(_ sender: Any) {
        if(enteredNum != ""){
            stack.append(enteredNum)
            stack.append("-")
            constructEquation()
            enteredNum = ""

        }
        else {
            return
        }
    }
    
    @IBAction func divide(_ sender: Any) {
        if(enteredNum != ""){
            stack.append(enteredNum)
            stack.append("i")
            constructEquation()
            enteredNum = ""

        }
        else {
            return
        }
    }

    @IBAction func multiply(_ sender: Any) {
        if(enteredNum != ""){
            stack.append(enteredNum)
            stack.append("m")
            constructEquation()
            enteredNum = ""

        }
        else {
            return
        }
    }
    
    @IBAction func del(_ sender: Any) {
        if(enteredNum != ""){
            enteredNum = enteredNum.substring(to: enteredNum.index(before: enteredNum.endIndex))
            outputScreen.text = enteredNum
        }
        else if(stack.count != 0){
            stack.popLast()
            constructEquation()
        }
    }
    
    @IBAction func equals(_ sender: Any) {
        var i = 0
        var result = 0.0
        while(i+2<stack.count){
            var n1 = Double(stack[i] as! String)
            var n2 = Double(stack[i+2] as! String)
            var res = 0.0
            switch stack[i+1] {
                case "/":
                    res = n1!/n2!
                    break
                case "*":
                    res = n1!*n2!
                    break
                case "+":
                    res = n1!+n2!
                    break
                case "-":
                    res = n1!-n2!
                    break
            default:
                print("Shit as gone down")
            }
            stack[i+2]=String(res)
            i+=2
        }
        result = Double(stack.last!)!
        outputScreen.text = result.description
        equation.text = ""
        stack = [String(result)]
    }
    
    @IBAction func clear(_ sender: Any) {
        enteredNum = ""
        stack.removeAll(keepingCapacity: false)
        outputScreen.text = ""
        equation.text = ""
    }
}

