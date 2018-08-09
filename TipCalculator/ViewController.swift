//
//  ViewController.swift
//  TipCalculator
//
//  Created by Juan R on 8/5/18.
//  Copyright © 2018 Juan R-Tip. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var TipLabel: UILabel!
    @IBOutlet weak var TotalLabel: UILabel!
    @IBOutlet weak var BillField: UITextField!
    @IBOutlet weak var TipControl: UISegmentedControl!
    @IBOutlet weak var TwoLabel: UILabel!
    @IBOutlet weak var ThreeLabel: UILabel!
    @IBOutlet weak var FourLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.BillField.becomeFirstResponder()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func OffTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func CalculateTip(_ sender: Any) {
        
        let TipPercent = [0.18, 0.2, 0.25]
        
        let Bill = Double(BillField.text!) ?? 0
        let Tip = Bill  * TipPercent[TipControl.selectedSegmentIndex]
        let Total = Bill + Tip
        
        let Two = (Total / 2)
        let Three = (Total / 3)
        let Four = (Total / 4)
        
        TipLabel.text = String(format: "$%.2f", Tip)
        TotalLabel.text = String(format: "$%.2f", Total)
        TwoLabel.text = String(format: "$%.2f", Two)
        ThreeLabel.text = String(format: "$%.2f", Three)
        FourLabel.text = String(format: "$%.2f", Four)
    }
    
    }


