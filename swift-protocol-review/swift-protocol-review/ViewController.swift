//
//  ViewController.swift
//  swift-protocol-review
//
//  Created by Johann Kerr on 11/8/16.
//  Copyright © 2016 Johann Kerr. All rights reserved.
//

import UIKit


class ViewController: UITableViewController, CalculationTipManager {

    
    
    var tipArray = [Double]()
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tipArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "basicCell", for: indexPath)
        cell.textLabel?.text = "\(self.tipArray[indexPath.row])"
        
        return cell
        
    }
    
    func calcAllTips() -> Double{
        return 0.0
    }

   
    @IBAction func calculateAllTips(_ sender: Any) {
        
        
        
        let alert = UIAlertController(title: "Total Tips", message: "\(calcAllTips())", preferredStyle: .alert)
  
        
        let cancelAction = UIAlertAction(title: "Ok!",
                                         style: .default)

        alert.addAction(cancelAction)
        
        present(alert, animated: true)
    }
    
    
    
    func addTipToVC(tip:Double){
        self.tipArray.append(tip)
        self.tableView.reloadData()
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dest = segue.destination as! AddTipViewController
        dest.delegate  = self
        

        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}

