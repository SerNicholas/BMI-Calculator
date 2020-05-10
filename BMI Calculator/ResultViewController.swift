//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Nikola on 08/05/2020.
//  Copyright © 2020 Nikola Krstevski. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
           super.viewDidLoad()
        
        resultLabel.text = bmiValue
    }

    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
    }
}
