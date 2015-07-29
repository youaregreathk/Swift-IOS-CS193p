//
//  ViewController.swift
//  Calculator1
//
//  Created by MichaelShea on 29/7/15.
//  Copyright (c) 2015 MichaelShea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var isuserinthemiddleoftypingsomething :Bool=false
    
    @IBOutlet weak var display: UILabel!
    
    @IBAction func appendDigit(sender: UIButton) {
       let digit=sender.currentTitle!  //let makes digit be a constant variable
          //put ! so that if the tile is Nil the title the program will crash. It will also make the type of digit changes from optional string to string
        if(isuserinthemiddleoftypingsomething)
        {
          display.text=display.text!+digit
        }
        else
        {
            display.text=digit
            isuserinthemiddleoftypingsomething=true
        }
        println("digit = \(digit)")
    }


}

