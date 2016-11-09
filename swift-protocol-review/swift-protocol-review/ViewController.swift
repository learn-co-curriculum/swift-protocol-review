//
//  ViewController.swift
//  swift-protocol-review
//
//  Created by Johann Kerr on 11/8/16.
//  Copyright © 2016 Johann Kerr. All rights reserved.
//

import UIKit

protocol CalculationTip {
    func addTipToVc(mealCost: Double)
}

class ViewController: UITableViewController, CalculationTip {

    
    
    var tipArray = [Double]()
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tipArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "basicCell", for: indexPath)
        
        cell.textLabel?.text = String(self.tipArray[indexPath.row])
        return cell
        
    }
    
    func calcAllTips() -> Double{
        return tipArray.reduce(0, +)
    }
    
    func addTipToVc(mealCost: Double) {
        let newTip = 0.15*mealCost
        self.tipArray.append(newTip)
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "tipSegue" {
            let dist = segue.destination as! AddTipViewController
            dist.addTip = self
        }
    }
    
    
    @IBAction func calculateAllTips(_ sender: Any) {
        
        self.tableView.reloadData()
        
        
        
        
        
        
        let alert = UIAlertController(title: "Total Tips", message: "\(calcAllTips())", preferredStyle: .alert)
  
        
        let cancelAction = UIAlertAction(title: "Ok!",
                                         style: .default)

        alert.addAction(cancelAction)
        
        present(alert, animated: true)
    }

}

