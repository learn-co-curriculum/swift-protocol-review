//
//  AddTipViewController.swift
//  swift-protocol-review
//
//  Created by Johann Kerr on 11/8/16.
//  Copyright © 2016 Johann Kerr. All rights reserved.
//

import UIKit

class AddTipViewController: UIViewController {

    @IBOutlet weak var tipTextField: UITextField!
    var addTip: CalculationTip?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    
    @IBAction func addTipBtnPressed(_ sender: Any) {
        let mealCost = Double(self.tipTextField.text!)
        self.addTip?.addTipToVc(mealCost: mealCost!)
        dismiss(animated: true, completion: nil)
        // get tipValueFromTextField 
        // make sure its a Double
        //calc tip at 15%
        // pass back to the first view controller
    }

   
}
