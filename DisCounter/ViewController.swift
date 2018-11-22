//
//  ViewController.swift
//  DisCounter
//
//  Created by Muhammad habib hidayatullah on 11/17/18.
//  Copyright © 2018 havdev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Result: UILabel!
    @IBOutlet weak var After: UILabel!
    @IBOutlet weak var Before: UILabel!
    @IBOutlet weak var inputDiscount: UITextField!
    @IBOutlet weak var inputPrice: UITextField!
    @IBOutlet weak var HowMany: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnReset(_ sender: Any) {
        Result.text = ""
        After.text = ""
        Before.text = ""
        inputPrice.text = ""
        inputDiscount.text = ""
        HowMany.text = ""
    }
    @IBAction func btnCek(_ sender: Any) {
        let price : Int? = Int(inputPrice.text!)
        let discount : Int? = Int(inputDiscount.text!)
        
        let discounts : Int = (price! * discount!/100)
        let after : Int = (price! - discounts)
        Result.text = "you save \(discounts)"
        After.text = "you must pay \(after)"
    }
    override func didReceiveMemoryWarning() {
     didReceiveMemoryWarning()
                // Dispose of any resources that can be recreated.
            }
        }


