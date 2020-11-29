//
//  Retirement.swift
//  NAV
//
//  Created by Zoleda Davila on 11/29/20.
//

import UIKit

var list1 = ["$100.00", "$1,000.00"]

class Retirement: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return(list1.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let tablecell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        
        tablecell.textLabel?.text = list1[indexPath.row]
        
        return(tablecell)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == UITableViewCell.EditingStyle.delete
        {
            list1.remove(at: indexPath.row)
            myTableView2.reloadData()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        myTableView2.reloadData()
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}

