//
//  ProductsTableViewController.swift
//  GoodAsOld
//
//  Created by Gilbert Folly Sewovoe-Ekoue on 3/5/16.
//  Copyright © 2016 Gilbert Folly Sewovoe-Ekoue. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    
    var products: [Product]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let produnct1 = Product()
        let produnct2 = Product()
        let produnct3 = Product()
        let produnct4 = Product()
        
        produnct1.name = "1907 Wall Set"
        produnct1.productImage = "phone-fullscreen1"
        produnct1.cellImage = "image-cell1"
        
        produnct2.name = "1021 Dial Phone"
        produnct2.productImage = "phone-fullscreen2"
        produnct2.cellImage = "image-cell2"
        
        produnct3.name = "1937 Desk Set"
        produnct3.productImage = "phone-fullscreen3"
        produnct3.cellImage = "image-cell3"
        
        produnct4.name = "1907 Wall Set"
        produnct4.productImage = "phone-fullscreen4"
        produnct4.cellImage = "image-cell4"
        
        products = [
            produnct1,
            produnct2, produnct3, produnct4 ]
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let p = products {
            return p.count
        }
        
        return 0
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ProductCell", forIndexPath: indexPath)
        
        let product = products?[indexPath.row]
        
        if let p = product {
            cell.textLabel?.text = p.name
            
            if let i = p.cellImage {
                cell.imageView?.image = UIImage(named: i)
            }
        }
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowProduct" {
            let productVC = segue.destinationViewController as? ProductViewController
            
            guard let cell = sender as? UITableViewCell,
                let indexPath = tableView.indexPathForCell(cell) else {
                    return
            }
            
            productVC?.product = products?[indexPath.row]
            
        }
    }
}
