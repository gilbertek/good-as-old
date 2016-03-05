//
//  ProductsTableViewController.swift
//  GoodAsOld
//
//  Created by Gilbert Folly Sewovoe-Ekoue on 3/5/16.
//  Copyright © 2016 Gilbert Folly Sewovoe-Ekoue. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ProductCell", forIndexPath: indexPath)

        return cell
    }
}
