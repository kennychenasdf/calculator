//
//  ViewController.swift
//  calculator
//
//  Created by Kenny on 10/4/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var number: UILabel!
    
    
    @IBOutlet weak var zero: UIButton!
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var three: UIButton!
    @IBOutlet weak var four: UIButton!
    @IBOutlet weak var five: UIButton!
    @IBOutlet weak var six: UIButton!
    @IBOutlet weak var seven: UIButton!
    @IBOutlet weak var eight: UIButton!
    @IBOutlet weak var nine: UIButton!
    
    
    @IBOutlet weak var clear: UIButton!
    
    @IBOutlet var collect: [UIButton]!
    
    @IBOutlet weak var sign: UIButton!
    
    
    @IBAction func num(_ sender: UIButton) {
        
        let but = sender.titleLabel!.text!
        print(but, " is pressed")
        
     
        guard let text = number.text else {
            return
        }
        if(text != "0"){
            number.text = text + but
        } else{
            number.text = but
        }

        print(number.text!, " is the current number")
        
        
    }
    
    @IBAction func clear(_ sender: Any) {
        number.text = "0"
        print("Cleared!")
    }
    
    
    @IBAction func sign(_ sender: Any) {
        guard let dbl = Double(number.text!) else {
            return
        }
        
        if(dbl.truncatingRemainder(dividingBy: 1) == 0){
            //is int
            number.text = String(-1 * Int(dbl))
        } else{
            // is double
            number.text = String(-1 * dbl)
        }
        
   
            
    }
    @IBAction func point(_ sender: Any) {
        guard let dbl = number.text else {
            return
        }
        
        if(!dbl.contains(".")) {
            print("Added Decimal")
            number.text = dbl + "."
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    var prevNum: Double;
    
    @IBAction func fourfunctions(_ sender: UIButton) {
        prevNum = Double(number.text)
        
        print(sender.titleLabel!.text!)
    }
    
}

