//
//  ViewController.swift
//  NShop
//
//  Created by 施馨檸 on 2017/8/5.
//  Copyright © 2017年 施馨檸. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var item1numTextField: UITextField!
    
    @IBOutlet weak var item2numTextField: UITextField!
    
    @IBOutlet weak var item3numTextField: UITextField!
    
    @IBOutlet weak var totalNTTextField: UITextField!
    
    var item1:Int=0
    var item2:Int=0
    var item3:Int=0
    
    
    @IBAction func item1Stepper(_ sender: UIStepper) {
        item1 = Int(sender.value)
        item1numTextField.text = "\(item1)"
    }
    
    @IBAction func item2Stepper(_ sender: UIStepper) {
        item2 = Int(sender.value)
        item2numTextField.text = "\(item2)"
    }
    
    @IBAction func item3Stepper(_ sender: UIStepper) {
        item3 = Int(sender.value)
        item3numTextField.text = "\(item3)"
    }
    
    @IBAction func checkOutButton(_ sender: UIButton) {
        calculate()
    }
    
    
    @IBOutlet weak var item1Stepper: UIStepper!
    @IBOutlet weak var item2Stepper: UIStepper!
    @IBOutlet weak var item3Stepper: UIStepper!
    @IBAction func deleteAllButton(_ sender: UIButton) {
        item1numTextField.text = "0"
        item2numTextField.text = "0"
        item3numTextField.text = "0"
        totalNTTextField.text = "0"
        item1Stepper.value = 0
        item2Stepper.value = 0
        item3Stepper.value = 0
        
    }
    
    func calculate() {
        let sum = item1 * 5680 + item2 * 6380 + item3 * 11980
        totalNTTextField.text = "\(sum)"
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

