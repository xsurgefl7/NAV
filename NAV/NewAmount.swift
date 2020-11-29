//
//  NewAmount.swift
//  NAV
//
//  Created by Zoleda Davila on 11/29/20.
//

import UIKit

class NewAmount: UIViewController {

    
    @IBOutlet weak var input: UITextField!
    
    @IBOutlet weak var input2: UITextField!
    
    @IBOutlet weak var input3: UITextField!
    
    @IBAction func submit(_ sender: Any) {
        if(input.text != "")
        {
            list.append(input.text!)
            input.text = ""
        }
    }
    
    
    @IBAction func submit2(_ sender: Any) {
        if(input2.text != "")
        {
            list1.append(input.text!)
            input.text = ""
        }    }
    
    @IBAction func submit3(_ sender: Any) {
        if(input3.text != "")
        {
            list3.append(input.text!)
            input.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}
