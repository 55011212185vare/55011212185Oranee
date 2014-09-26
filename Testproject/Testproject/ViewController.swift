//
//  ViewController.swift
//  Testproject
//
//  Created by Student on 9/26/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let cellIdntifier = "cellIdntifier "
    var tableData = ["Bus","Helicopter","Truck"]
   
   
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.Tableview.registerClass(UITableViewCell.self, forCellReuseIdentifier: self.cellIdntifier)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSectionsInTableView(tableView: UITableView!) ->Int{
        return 1
    }
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) ->Int
    {
        re
    }


}

