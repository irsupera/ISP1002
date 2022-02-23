//
//  ViewController.swift
//  Assignment2
//
//  Created by IR Supera on 2022-02-21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Input: UILabel!
    
    @IBAction func One() {
        Input.text = Input.text! + "1"
    }
    @IBAction func Two() {
        Input.text = Input.text! + "2"
    }
    @IBAction func Three() {
        Input.text = Input.text! + "3"
    }
    @IBAction func Four() {
        Input.text = Input.text! + "4"
    }
    @IBAction func Five() {
        Input.text = Input.text! + "5"
    }
    @IBAction func Six() {
        Input.text = Input.text! + "6"
    }
    @IBAction func Seven() {
        Input.text = Input.text! + "7"
    }
    @IBAction func Eight() {
        Input.text = Input.text! + "8"
    }
    @IBAction func Nine() {
        Input.text = Input.text! + "8"
    }
    @IBAction func Add() {
        Input.text = Input.text! + "+"
    }
    @IBAction func Subtract() {
        Input.text = Input.text! + "-"
    }
    @IBAction func Multiply() {
        Input.text = Input.text! + "x"
    }
    @IBAction func Divide() {
        Input.text = Input.text! + "/"
    }
    @IBAction func Mod() {
        Input.text = Input.text! + "%"
    }
    @IBAction func OPar() {
        Input.text = Input.text! + "("
    }
    @IBAction func CPar() {
        Input.text = Input.text! + ")"
    }
    @IBAction func Equal() {
        let expression = NSExpression(format:Input.text!)
        let value = expression.expressionValue(with: nil, context: nil) as? Int
        Input.text = value?.description
    }
    @IBAction func Clear() {
        Input.text = " "
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

