//
//  ViewController.swift
//  is-it-prime
//
//  Created by Jen Homann on 11/29/17.
//  Copyright © 2017 Jen Homann. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var numberTF: UITextField!
    @IBOutlet var responseLabel: UILabel!
    
    @IBAction func submitButton(_ sender: Any) {
        let input = numberTF.text
        var response = String()
        
        if input != nil {
            if let number = Int(input!) {
                if isPrime(number) {
                    response = "\(number) IS a prime number!"
                } else {
                    response = "\(number) is not a prime number."
                }
            } else {
                response = "You must enter a positive whole number."
            }
        } else {
            response = "Enter a number first, silly!"
        }
        
        responseLabel.text = response
    }
    
    func isPrime(_ number: Int) -> Bool {
        return number > 1 && !(2..<number).contains { number % $0 == 0 }
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

