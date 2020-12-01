//
//  Payment.swift
//  NAV
//
//  Created by Zoleda Davila on 11/29/20.
//

import UIKit

var list3=["$200.00"]

class Payment: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var myTableView3: UITableView!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return(list3.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let tablecell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell1")
        
        tablecell.textLabel?.text = list3[indexPath.row]
        
        return(tablecell)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == UITableViewCell.EditingStyle.delete
        {
            list3.remove(at: indexPath.row)
            myTableView3.reloadData()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        myTableView3.reloadData()
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}

