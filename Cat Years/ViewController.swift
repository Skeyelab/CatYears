//
//  ViewController.swift
//  Cat Years
//
//  Created by Eric Dahl on 3/2/15.
//  Copyright (c) 2015 Skeyelab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var age: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!

    @IBOutlet weak var geetsImg: UIImageView!
   
    @IBAction func findAgeButton(sender: AnyObject) {
        
        var enteredAge = age.text.toInt()
        
        if enteredAge != nil{
        
            var catYears = enteredAge! * 7
        
            println(catYears)
            
            resultLabel.text = "Your cat is \(catYears) in cat years."
        
            geetsImg.hidden = false
            
        }else{
            resultLabel.text = "Please enter a whole number."
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

