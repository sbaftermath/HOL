//
//  ViewController.swift
//  Calculator
//
//  Created by admin on 1/31/20.
//  Copyright © 2020 revature. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var result: UITextField!

    @IBOutlet weak var number1: UIButton!
    @IBOutlet weak var number2: UIButton!
    @IBOutlet weak var number3: UIButton!
    @IBOutlet weak var number4: UIButton!
    @IBOutlet weak var number5: UIButton!
    @IBOutlet weak var number6: UIButton!
    @IBOutlet weak var number7: UIButton!
    @IBOutlet weak var number8: UIButton!
    @IBOutlet weak var number9: UIButton!
    @IBOutlet weak var number0: UIButton!
    @IBOutlet weak var clear: UIButton!
    
    @IBOutlet weak var add: UIButton!
    @IBOutlet weak var subtract: UIButton!
    @IBOutlet weak var multiply: UIButton!
    @IBOutlet weak var divide: UIButton!
    @IBOutlet weak var equals: UIButton!
    
    var firstNumber:Double? = nil
    var SecondNumber:Double? = nil
    var answer:Double = 0
    var operation:Int? = nil
    
    @IBAction func number0(_ sender: UIButton) {
        if (firstNumber == nil){
            firstNumber = 0
            self.result.text = "\(firstNumber!)"
        }else if ((firstNumber != nil) && (SecondNumber == nil)){
            SecondNumber = 0
            self.result.text = "\(firstNumber!) and \(SecondNumber!)"
        }
    }
    
    @IBAction func number1(_ sender: UIButton) {
        if (firstNumber == nil){
            firstNumber = 1
            self.result.text = "\(firstNumber!)"
        }else if ((firstNumber != nil) && (SecondNumber == nil)){
            SecondNumber = 1
            self.result.text = "\(firstNumber!) and \(SecondNumber!)"
        }
    }
    
    @IBAction func number2(_ sender: UIButton) {
        if (firstNumber == nil){
            firstNumber = 2
            self.result.text = "\(firstNumber!)"
        }else if ((firstNumber != nil) && (SecondNumber == nil)){
            SecondNumber = 2
            self.result.text = "\(firstNumber!) and \(SecondNumber!)"
        }
    }
    
    @IBAction func number3(_ sender: UIButton) {
        if (firstNumber == nil){
            firstNumber = 3
            self.result.text = "\(firstNumber!)"
        }else if ((firstNumber != nil) && (SecondNumber == nil)){
            SecondNumber = 3
            self.result.text = "\(firstNumber!) and \(SecondNumber!)"
        }
    }
    
    @IBAction func number4(_ sender: UIButton) {
        if (firstNumber == nil){
            firstNumber = 4
            self.result.text = "\(firstNumber!)"
        }else if ((firstNumber != nil) && (SecondNumber == nil)){
            SecondNumber = 4
            self.result.text = "\(firstNumber!) and \(SecondNumber!)"
        }
    }
    
    @IBAction func number5(_ sender: UIButton) {
        if (firstNumber == nil){
            firstNumber = 5
            self.result.text = "\(firstNumber!)"
        }else if ((firstNumber != nil) && (SecondNumber == nil)){
            SecondNumber = 5
            self.result.text = "\(firstNumber!) and \(SecondNumber!)"
        }
    }
    
    @IBAction func number6(_ sender: UIButton) {
        if (firstNumber == nil){
            firstNumber = 6
            self.result.text = "\(firstNumber!)"
        }else if ((firstNumber != nil) && (SecondNumber == nil)){
            SecondNumber = 6
            self.result.text = "\(firstNumber!) and \(SecondNumber!)"
        }
    }
    
    @IBAction func number7(_ sender: UIButton) {
        if (firstNumber == nil){
            firstNumber = 7
            self.result.text = "\(firstNumber!)"
        }else if ((firstNumber != nil) && (SecondNumber == nil)){
            SecondNumber = 7
            self.result.text = "\(firstNumber!) and \(SecondNumber!)"
        }
    }
    
    @IBAction func number8(_ sender: UIButton) {
        if (firstNumber == nil){
            firstNumber = 8
            self.result.text = "\(firstNumber!)"
        }else if ((firstNumber != nil) && (SecondNumber == nil)){
            SecondNumber = 8
            self.result.text = "\(firstNumber!) and \(SecondNumber!)"
        }
    }
    
    @IBAction func number9(_ sender: UIButton) {
        if (firstNumber == nil){
            firstNumber = 9
            self.result.text = "\(firstNumber!)"
        }else if ((firstNumber != nil) && (SecondNumber == nil)){
            SecondNumber = 9
            self.result.text = "\(firstNumber!) and \(SecondNumber!)"
        }
    }
    
    
    @IBAction func clearFunc(_ sender: UIButton) {
        firstNumber = nil
        SecondNumber = nil
        self.result.text = "Cleared"
    }
    
    @IBAction func addFunc(_ sender: UIButton) {
        if (firstNumber == nil){
            self.result.text = "Need first number"
        }else if (SecondNumber == nil){
            self.result.text = "Need second number"
        }else{
            self.result.text = "\(firstNumber!) + \(SecondNumber!)"
            answer = firstNumber! + SecondNumber!
        }
    }
    
    @IBAction func subFunc(_ sender: UIButton) {
        if (firstNumber == nil){
            self.result.text = "Need first number"
        }else if (SecondNumber == nil){
            self.result.text = "Need second number"
        }else{
            self.result.text = "\(firstNumber!) - \(SecondNumber!)"
            answer = firstNumber! - SecondNumber!
        }
    }
    
    @IBAction func multFunc(_ sender: UIButton) {
        if (firstNumber == nil){
            self.result.text = "Need first number"
        }else if (SecondNumber == nil){
            self.result.text = "Need second number"
        }else{
            self.result.text = "\(firstNumber!) * \(SecondNumber!)"
            answer = firstNumber! * SecondNumber!
        }
    }
    
    @IBAction func divFunc(_ sender: UIButton) {
        if (firstNumber == nil){
            self.result.text = "Need first number"
        }else if (SecondNumber == nil){
            self.result.text = "Need second number"
        }else if (SecondNumber != 0){
            self.result.text = "\(firstNumber!) / \(SecondNumber!)"
            answer = firstNumber! / SecondNumber!
        }else if (SecondNumber == 0){
            self.result.text = "Cannot divide by 0"
        }
    }
    
    @IBAction func equalsFunc(_ sender: UIButton) {
        self.result.text = "\(answer)"
        firstNumber = answer
        SecondNumber = nil
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

