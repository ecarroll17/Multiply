//
//  ViewController.swift
//  Multiply App
//
//  Created by ecarroll on 9/11/15.
//  Copyright (c) 2015 ecarroll. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var segCont: UISegmentedControl!
    
    @IBAction func chosenOperator(sender: UISegmentedControl)
    {
        let firstNumberString = textField1.text
        let firstNumberDouble = (firstNumberString! as NSString).doubleValue
        
        let secondNumberString = textField2.text
        let secondNumberDouble = (secondNumberString! as NSString).doubleValue

        if segCont.selectedSegmentIndex == 0
        {
            var ansOne = firstNumberDouble + secondNumberDouble
            
            answerLabel.text = "\(ansOne)"
            
            myLabel.text = "+"
            
            myImage.image = UIImage(named: "white")
        }
       
        if segCont.selectedSegmentIndex == 1
        {
            var ansTwo = firstNumberDouble - secondNumberDouble
            
            answerLabel.text = "\(ansTwo)"
            
            myLabel.text = "-"
            
            myImage.image = UIImage(named: "white")
        }
        
        if segCont.selectedSegmentIndex == 2
        {
            var ansThree = firstNumberDouble * secondNumberDouble
            
            answerLabel.text = "\(ansThree)"
            
            myLabel.text = "X"
            
            if (ansThree % 2) == 0
            {
                myImage.image = UIImage(named: "funnyImage")
            }
            
            else
            {
                myImage.image = UIImage(named: "funnierImage")
            }
            
            if ansThree == 64
            {
                myImage.image = UIImage(named: "toadMarioKart")
            }
        }
        
        if segCont.selectedSegmentIndex == 3
        {
            var ansFour = firstNumberDouble / secondNumberDouble
            
            answerLabel.text = "\(ansFour)"
            
            myLabel.text = "/"
            
            myImage.image = UIImage(named: "white")
        }
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }


}

