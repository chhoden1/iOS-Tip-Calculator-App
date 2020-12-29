//
//  ViewController.swift
//  Prework
//
//  Created by Chhoden Sherpa on 12/29/20.
//

import UIKit

class ViewController: UIViewController {

    
   
    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipPercentageLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Tip Calculator"
    

    }

   
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)

    }
    
    
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let bill = Double(billAmountTextField.text!) ?? 0
           
           
               // Calculate the tip and total
               let tipPercentages = [0.15, 0.18, 0.2]
               let tip = bill*tipPercentages[tipControl.selectedSegmentIndex]
               let total = bill+tip
               
               
               // Update the tip and total
               tipPercentageLabel.text = String(format:"$%.2f",tip)
               totalLabel.text = String(format: "$%.2f", total)

    }
    
    
    @IBAction func onClickResetButton(_ sender: Any) {
        billAmountTextField.text = ""
              tipPercentageLabel.text = "$0.00"
              totalLabel.text = "$0.00"
    }
    
}

