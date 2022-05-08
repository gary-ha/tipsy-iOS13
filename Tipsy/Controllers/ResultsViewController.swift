//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Gary Ha on 08/05/2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    var splitTotal: Double?
    var numberOfPeople: Int?
    var tipPercentage: Double?
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = String(format: "%.2f", splitTotal!)
        settingsLabel.text = "Split between \(numberOfPeople!) people, with \(Int(tipPercentage! * 100))% tip."

        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
