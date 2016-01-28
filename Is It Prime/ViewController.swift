//
//  ViewController.swift
//  Is It Prime
//
//  Created by Darryl Nunn on 1/23/16.
//  Copyright © 2016 Darryl Nunn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var numberInputTextField: UITextField!
    
    @IBOutlet var isPrimeLabel: UILabel!
    
    @IBAction func primeNumberChecker(sender: AnyObject) {
        
        if let number = Int(numberInputTextField.text!) {
            
        
            var isItPrime = true
        
            if number == 1 {
                isItPrime = false
            }
        
            if number != 2 && number != 1 {
            
                for var i = 2; i < number; i++ {
                
                    if number % i == 0 {
                    isItPrime = false
                    }
                }
            }
            isPrimeLabel.text = " \(isItPrime)"
        } else {
            isPrimeLabel.text = "Please enter a whole number"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

