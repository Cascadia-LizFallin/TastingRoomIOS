//
//  PalateTableViewController.swift
//  TastingRoomIOS
//
//  Created by Fallin, Liz on 5/25/16.
//  Copyright © 2016 Liz Fallin. All rights reserved.
//

import UIKit

class PalateTableViewController: UITableViewController {

    // Characteristics for Palate
    var listData = ["Sweetness", "Acidity", "Tannin", "Body", "Flavor Characteristics", "Length"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    
    // Returns the number of rows to be used in the dynamic data table
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listData.count
    }
    
    
    // Creates the label for the current cell
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PalateCell", forIndexPath: indexPath)
        cell.textLabel?.text = listData[indexPath.row];

        // Modify font
        cell.textLabel?.font = UIFont(name:"Iowan Old Style", size:18);
        
        return cell
    }

}
