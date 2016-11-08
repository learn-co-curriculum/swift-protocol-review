//
//  ViewController.swift
//  swift-protocol-review
//
//  Created by Johann Kerr on 11/8/16.
//  Copyright © 2016 Johann Kerr. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    
    
    var tipArray = [Double]()
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "basicCell", for: indexPath)
        
        
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

}

