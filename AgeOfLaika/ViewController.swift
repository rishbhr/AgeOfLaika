//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Rishbh Rana on 5/28/15.
//  Copyright (c) 2015 TekBarn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ageInHumanYearsTextField: UITextField!
    @IBOutlet weak var convertedAgeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        let laikaInHumanYears = ageInHumanYearsTextField.text.toInt()!
        
        let conversionFactor = 7
        
        convertedAgeLabel.hidden = false
        convertedAgeLabel.text = "\(laikaInHumanYears * conversionFactor)" + " is the age in dog years"
        
        ageInHumanYearsTextField.resignFirstResponder()
        
    }

}

