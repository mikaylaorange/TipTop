//
//  ViewController.swift
//  TipTop
//
//  Created by Mikayla Orange on 1/21/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var numberPeopleField: UITextField!
    @IBOutlet weak var tipPerPersonLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalPerPersonLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.10,0.15,0.20]
        let numPatrons = Double(numberPeopleField.text!) ?? 1
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        let tipPerPerson = tip / numPatrons
        let totalPerPerson = total / numPatrons
        tipAmountLabel.text = String(format: "$%.2f",tip)
        totalLabel.text = String(format: "$%.2f",total)
        totalPerPersonLabel.text = String(format: "$%.2f",totalPerPerson)
        tipPerPersonLabel.text = String(format: "$%.2f",tipPerPerson)
    }
    
}

