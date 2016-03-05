//
//  ContactViewController.swift
//  GoodAsOld
//
//  Created by Gilbert Folly Sewovoe-Ekoue on 3/5/16.
//  Copyright © 2016 Gilbert Folly Sewovoe-Ekoue. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.addSubview(scrollView)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        scrollView.contentSize = CGSizeMake(375, 800)
    }

}
