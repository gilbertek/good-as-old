//
//  ProductsTableViewController.swift
//  GoodAsOld
//
//  Created by Gilbert Folly Sewovoe-Ekoue on 3/5/16.
//  Copyright © 2016 Gilbert Folly Sewovoe-Ekoue. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    
    var productNames: [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productNames = [
            "1907 Wall Set",
            "1021 Dial Phone",
            "1937 Desk Set",
            "1984 Motorola Portable"
        ]
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let pNames = productNames {
            return pNames.count
        }
        
        return 0
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ProductCell", forIndexPath: indexPath)
        
        let productName = productNames?[indexPath.row]
        
        if let pName = productName {
            cell.textLabel?.text = pName
            cell.imageView?.image = UIImage(named: "image-cell\(indexPath.row + 1) ")
        }
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowProduct" {
            let productVC = segue.destinationViewController as? ProductViewController
            productVC?.productName = "Really Old Phone"
            
        }
    }
}
