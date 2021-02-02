//
//  ViewController.swift
//  Calculator
//
//  Created by chihoooon on 2021/02/02.
//

import UIKit

class ViewController: UIViewController {

    let limitLength: Int = 10
    var rest: Int = 0
    var restFlag: Bool = false
    var zeroFlag: Bool = false
    var floatFlag: Bool = false
    var arr1: Array<Double> = []
    var arr2: Array<Double> = []
    
    @IBOutlet weak var lbCalculate: UILabel!
    @IBOutlet weak var lbResult: UILabel!
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonThree: UIButton!
    @IBOutlet weak var buttonFour: UIButton!
    @IBOutlet weak var buttonFive: UIButton!
    @IBOutlet weak var buttonSix: UIButton!
    @IBOutlet weak var buttonSeven: UIButton!
    @IBOutlet weak var buttonEight: UIButton!
    @IBOutlet weak var buttonNine: UIButton!
    @IBOutlet weak var buttonZero: UIButton!
    @IBOutlet weak var buttonDot: UIButton!
    @IBOutlet weak var buttonEqual: UIButton!
    @IBOutlet weak var buttonAdd: UIButton!
    @IBOutlet weak var buttonSubtract: UIButton!
    @IBOutlet weak var buttonMultiply: UIButton!
    @IBOutlet weak var buttonDivision: UIButton!
    @IBOutlet weak var buttonPercentage: UIButton!
    @IBOutlet weak var buttonSign: UIButton!
    @IBOutlet weak var buttonClear: UIButton!

    @IBAction func touchButtonAdd(_ sender: UIButton){
        guard let stNumber = lbResult.text else{ return }
        guard let count = lbResult.text?.count else{ return }
        if count > 0 {
            lbCalculate.text?.append(stNumber)
            lbResult.text?.removeAll()
        }
        lbCalculate.text?.append("+")
     //   guard let number = Double(stNumber) else { return }
        
    }
    
    
    
    
    @IBAction func touchButtonDot(_ sender: UIButton){
        if floatFlag == false{
            guard let count = lbResult.text?.count else{ return }
            if count == 0 {
                lbResult.text?.append("0")
            }
            lbResult.text?.append(".")
            floatFlag = true
        }
    }
    
    
    @IBAction func touchButtonClear(_ sender: UIButton){
        lbResult.text = ""
        rest = 0
        restFlag = false
        zeroFlag = false
        floatFlag = false
    }
    @IBAction func touchButtonOne(_ sender: UIButton){
        guard let count = lbResult.text?.count else{ return }
        if count < limitLength {
            if lbResult.text?.hasPrefix("0") == true && floatFlag == false{
                lbResult.text?.removeFirst()
            }

            if floatFlag == true{
                lbResult.text?.append("1")
            }
            else{
                lbResult.text?.append("1")
                if (count - rest) % 3 == 0 && count > 0{
                    rest += 1
                    restFlag = true
                    guard let endIndex = lbResult.text?.endIndex else { return }
                    guard let index = lbResult.text?.index(endIndex, offsetBy: -3) else { return }
                    lbResult.text?.insert(",", at: index)
                }
                
                else if restFlag == true {
                    lbResult.text = lbResult.text?.replacingOccurrences(of: ",", with: "")
                    guard let endIndex = lbResult.text?.endIndex else { return }
                    guard let index = lbResult.text?.index(endIndex, offsetBy: -3) else { return }
                    lbResult.text?.insert(",", at: index)
                    
                    if count > 6 {
                        guard let index2 = lbResult.text?.index(endIndex, offsetBy: -6) else { return }
                        lbResult.text?.insert(",", at: index2)
                    }
                    rest += 1
                }
            }
        }
    }
    @IBAction func touchButtonTwo(_ sender: UIButton){
        guard let count = lbResult.text?.count else{ return }
        if count < limitLength {
            if lbResult.text?.hasPrefix("0") == true && floatFlag == false{
                lbResult.text?.removeFirst()
            }

            if floatFlag == true{
                lbResult.text?.append("2")
            }
            else{
                lbResult.text?.append("2")
                if (count - rest) % 3 == 0 && count > 0{
                    rest += 1
                    restFlag = true
                    guard let endIndex = lbResult.text?.endIndex else { return }
                    guard let index = lbResult.text?.index(endIndex, offsetBy: -3) else { return }
                    lbResult.text?.insert(",", at: index)
                }
                
                else if restFlag == true {
                    lbResult.text = lbResult.text?.replacingOccurrences(of: ",", with: "")
                    guard let endIndex = lbResult.text?.endIndex else { return }
                    guard let index = lbResult.text?.index(endIndex, offsetBy: -3) else { return }
                    lbResult.text?.insert(",", at: index)
                    
                    if count > 6 {
                        guard let index2 = lbResult.text?.index(endIndex, offsetBy: -6) else { return }
                        lbResult.text?.insert(",", at: index2)
                    }
                    rest += 1
                }
            }
        }
    }
    @IBAction func touchButtonThree(_ sender: UIButton){
        guard let count = lbResult.text?.count else{ return }
        if count < limitLength {
            if lbResult.text?.hasPrefix("0") == true && floatFlag == false{
                lbResult.text?.removeFirst()
            }

            if floatFlag == true{
                lbResult.text?.append("3")
            }
            else{
                lbResult.text?.append("3")
                if (count - rest) % 3 == 0 && count > 0{
                    rest += 1
                    restFlag = true
                    guard let endIndex = lbResult.text?.endIndex else { return }
                    guard let index = lbResult.text?.index(endIndex, offsetBy: -3) else { return }
                    lbResult.text?.insert(",", at: index)
                }
                
                else if restFlag == true {
                    lbResult.text = lbResult.text?.replacingOccurrences(of: ",", with: "")
                    guard let endIndex = lbResult.text?.endIndex else { return }
                    guard let index = lbResult.text?.index(endIndex, offsetBy: -3) else { return }
                    lbResult.text?.insert(",", at: index)
                    
                    if count > 6 {
                        guard let index2 = lbResult.text?.index(endIndex, offsetBy: -6) else { return }
                        lbResult.text?.insert(",", at: index2)
                    }
                    rest += 1
                }
            }
        }
    }
    @IBAction func touchButtonFour(_ sender: UIButton){
        guard let count = lbResult.text?.count else{ return }
        if count < limitLength {
            if lbResult.text?.hasPrefix("0") == true && floatFlag == false{
                lbResult.text?.removeFirst()
            }

            if floatFlag == true{
                lbResult.text?.append("4")
            }
            else{
                lbResult.text?.append("4")
                if (count - rest) % 3 == 0 && count > 0{
                    rest += 1
                    restFlag = true
                    guard let endIndex = lbResult.text?.endIndex else { return }
                    guard let index = lbResult.text?.index(endIndex, offsetBy: -3) else { return }
                    lbResult.text?.insert(",", at: index)
                }
                
                else if restFlag == true {
                    lbResult.text = lbResult.text?.replacingOccurrences(of: ",", with: "")
                    guard let endIndex = lbResult.text?.endIndex else { return }
                    guard let index = lbResult.text?.index(endIndex, offsetBy: -3) else { return }
                    lbResult.text?.insert(",", at: index)
                    
                    if count > 6 {
                        guard let index2 = lbResult.text?.index(endIndex, offsetBy: -6) else { return }
                        lbResult.text?.insert(",", at: index2)
                    }
                    rest += 1
                }
            }
        }
    }
    @IBAction func touchButtonFive(_ sender: UIButton){
        guard let count = lbResult.text?.count else{ return }
        if count < limitLength {
            if lbResult.text?.hasPrefix("0") == true && floatFlag == false{
                lbResult.text?.removeFirst()
            }

            if floatFlag == true{
                lbResult.text?.append("5")
            }
            else{
                lbResult.text?.append("5")
                if (count - rest) % 3 == 0 && count > 0{
                    rest += 1
                    restFlag = true
                    guard let endIndex = lbResult.text?.endIndex else { return }
                    guard let index = lbResult.text?.index(endIndex, offsetBy: -3) else { return }
                    lbResult.text?.insert(",", at: index)
                }
                
                else if restFlag == true {
                    lbResult.text = lbResult.text?.replacingOccurrences(of: ",", with: "")
                    guard let endIndex = lbResult.text?.endIndex else { return }
                    guard let index = lbResult.text?.index(endIndex, offsetBy: -3) else { return }
                    lbResult.text?.insert(",", at: index)
                    
                    if count > 6 {
                        guard let index2 = lbResult.text?.index(endIndex, offsetBy: -6) else { return }
                        lbResult.text?.insert(",", at: index2)
                    }
                    rest += 1
                }
            }
        }
    }
    @IBAction func touchButtonSix(_ sender: UIButton){
        guard let count = lbResult.text?.count else{ return }
        if count < limitLength {
            if lbResult.text?.hasPrefix("0") == true && floatFlag == false{
                lbResult.text?.removeFirst()
            }

            if floatFlag == true{
                lbResult.text?.append("6")
            }
            else{
                lbResult.text?.append("6")
                if (count - rest) % 3 == 0 && count > 0{
                    rest += 1
                    restFlag = true
                    guard let endIndex = lbResult.text?.endIndex else { return }
                    guard let index = lbResult.text?.index(endIndex, offsetBy: -3) else { return }
                    lbResult.text?.insert(",", at: index)
                }
                
                else if restFlag == true {
                    lbResult.text = lbResult.text?.replacingOccurrences(of: ",", with: "")
                    guard let endIndex = lbResult.text?.endIndex else { return }
                    guard let index = lbResult.text?.index(endIndex, offsetBy: -3) else { return }
                    lbResult.text?.insert(",", at: index)
                    
                    if count > 6 {
                        guard let index2 = lbResult.text?.index(endIndex, offsetBy: -6) else { return }
                        lbResult.text?.insert(",", at: index2)
                    }
                    rest += 1
                }
            }
        }
    }
    @IBAction func touchButtonSeven(_ sender: UIButton){
        guard let count = lbResult.text?.count else{ return }
        if count < limitLength {
            if lbResult.text?.hasPrefix("0") == true && floatFlag == false{
                lbResult.text?.removeFirst()
            }

            if floatFlag == true{
                lbResult.text?.append("7")
            }
            else{
                lbResult.text?.append("7")
                if (count - rest) % 3 == 0 && count > 0{
                    rest += 1
                    restFlag = true
                    guard let endIndex = lbResult.text?.endIndex else { return }
                    guard let index = lbResult.text?.index(endIndex, offsetBy: -3) else { return }
                    lbResult.text?.insert(",", at: index)
                }
                
                else if restFlag == true {
                    lbResult.text = lbResult.text?.replacingOccurrences(of: ",", with: "")
                    guard let endIndex = lbResult.text?.endIndex else { return }
                    guard let index = lbResult.text?.index(endIndex, offsetBy: -3) else { return }
                    lbResult.text?.insert(",", at: index)
                    
                    if count > 6 {
                        guard let index2 = lbResult.text?.index(endIndex, offsetBy: -6) else { return }
                        lbResult.text?.insert(",", at: index2)
                    }
                    rest += 1
                }
            }
        }
    }
    @IBAction func touchButtonEight(_ sender: UIButton){
        guard let count = lbResult.text?.count else{ return }
        if count < limitLength {
            if lbResult.text?.hasPrefix("0") == true && floatFlag == false{
                lbResult.text?.removeFirst()
            }

            if floatFlag == true{
                lbResult.text?.append("8")
            }
            else{
                lbResult.text?.append("8")
                if (count - rest) % 3 == 0 && count > 0{
                    rest += 1
                    restFlag = true
                    guard let endIndex = lbResult.text?.endIndex else { return }
                    guard let index = lbResult.text?.index(endIndex, offsetBy: -3) else { return }
                    lbResult.text?.insert(",", at: index)
                }
                
                else if restFlag == true {
                    lbResult.text = lbResult.text?.replacingOccurrences(of: ",", with: "")
                    guard let endIndex = lbResult.text?.endIndex else { return }
                    guard let index = lbResult.text?.index(endIndex, offsetBy: -3) else { return }
                    lbResult.text?.insert(",", at: index)
                    
                    if count > 6 {
                        guard let index2 = lbResult.text?.index(endIndex, offsetBy: -6) else { return }
                        lbResult.text?.insert(",", at: index2)
                    }
                    rest += 1
                }
            }
        }
    }
    @IBAction func touchButtonNine(_ sender: UIButton){
        guard let count = lbResult.text?.count else{ return }
        if count < limitLength {
            if lbResult.text?.hasPrefix("0") == true && floatFlag == false{
                lbResult.text?.removeFirst()
            }

            if floatFlag == true{
                lbResult.text?.append("9")
            }
            else{
                lbResult.text?.append("9")
                if (count - rest) % 3 == 0 && count > 0{
                    rest += 1
                    restFlag = true
                    guard let endIndex = lbResult.text?.endIndex else { return }
                    guard let index = lbResult.text?.index(endIndex, offsetBy: -3) else { return }
                    lbResult.text?.insert(",", at: index)
                }
                
                else if restFlag == true {
                    lbResult.text = lbResult.text?.replacingOccurrences(of: ",", with: "")
                    guard let endIndex = lbResult.text?.endIndex else { return }
                    guard let index = lbResult.text?.index(endIndex, offsetBy: -3) else { return }
                    lbResult.text?.insert(",", at: index)
                    
                    if count > 6 {
                        guard let index2 = lbResult.text?.index(endIndex, offsetBy: -6) else { return }
                        lbResult.text?.insert(",", at: index2)
                    }
                    rest += 1
                }
            }
        }
    }
    @IBAction func touchButtonZero(_ sender: UIButton){
        guard let count = lbResult.text?.count else{ return }
        if count == 0 {
            zeroFlag = true
            lbResult.text?.append("0")
        }
        else{
            if floatFlag == true && count < limitLength{
                lbResult.text?.append("0")
            }
            else if floatFlag == false && lbResult.text?.hasPrefix("0") == false {
                if count < limitLength {
                    lbResult.text?.append("0")
                    if (count - rest) % 3 == 0 && count > 0{
                        rest += 1
                        restFlag = true
                        guard let endIndex = lbResult.text?.endIndex else { return }
                        guard let index = lbResult.text?.index(endIndex, offsetBy: -3) else { return }
                        lbResult.text?.insert(",", at: index)
                    }
                    
                    else if restFlag == true {
                        lbResult.text = lbResult.text?.replacingOccurrences(of: ",", with: "")
                        guard let endIndex = lbResult.text?.endIndex else { return }
                        guard let index = lbResult.text?.index(endIndex, offsetBy: -3) else { return }
                        lbResult.text?.insert(",", at: index)
                        
                        if count > 6 {
                            guard let index2 = lbResult.text?.index(endIndex, offsetBy: -6) else { return }
                            lbResult.text?.insert(",", at: index2)
                        }
                        rest += 1
                    }
                }
            }
            
        }
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.        
        for view in self.view.subviews as [UIView] {
            if let btn = view as? UIButton {
                btn.clipsToBounds = true
                btn.layer.cornerRadius = 0.5 * buttonOne.bounds.size.width
            }
        }
        view.backgroundColor = .black
    }


}

