//
//  AddTipViewController.swift
//  swift-protocol-review
//
//  Created by Johann Kerr on 11/8/16.
//  Copyright © 2016 Johann Kerr. All rights reserved.
//

import UIKit
protocol CalculationTipManager{
    func addTipToVC(tip:Double)
    
}

class AddTipViewController: UIViewController {

    @IBOutlet weak var tipTextField: UITextField!
    
    var delegate: CalculationTipManager?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    
    @IBAction func addTipBtnPressed(_ sender: Any) {
        
        var tipString = self.tipTextField.text
        guard let unwrappedtipString = tipString else { return }
        var tipValue = Double(unwrappedtipString)
        guard let unwrappedTipValue = tipValue else { return }
        var calculatedTip = unwrappedTipValue * 0.20
        delegate?.addTipToVC(tip: calculatedTip)
        self.navigationController?.popViewController(animated: true)
        
        
    }

   
}
