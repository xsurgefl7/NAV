//
//  ViewController.swift
//  NAV
//
//  Created by Sergio Salazar on 10/31/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var AccountOptionButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor (patternImage: UIImage( named:"NavyBlue.png")!);
        // Do any additional setup after loading the view.
    }

    @IBAction func AccountButton(_ sender: UIButton) {
        
        AccountOptionButtons.forEach { (button) in
            UIView.animate(withDuration: 0.3,animations:{
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })

            
        }
        
        
    }
  
    @IBAction func JoinButton(_ sender: Any) {
        
        
    }
    @IBAction func locationbutton(_ sender: Any) {
        
        
    }
    @IBAction func ButtonTapped(_ sender: UIButton) {
    }
}

