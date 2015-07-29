//
//  ViewController.swift
//  TestAMSlideMenu
//
//  Created by Eric Internicola on 7/29/15.
//  Copyright (c) 2015 iColaSoft. All rights reserved.
//

import UIKit
import AMSlideMenu

class MainViewController: AMSlideMenuMainViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func segueIdentifierForIndexPathInLeftMenu(indexPath: NSIndexPath!) -> String! {
        var identifier: String? = nil
        switch(indexPath.row) {
        case 0:
            identifier = "firstSegue"
            
        case 1:
            identifier = "secondSegue"
        default:
            identifier = nil
        }
        return identifier
    }
    
    override func configureLeftMenuButton(button: UIButton!) {
        button.frame = CGRectMake(0, 0, 40, 40)
        let image: UIImage! = UIImage(named: "hamburger.png")
        button.setImage(image, forState: UIControlState.Normal)
    }
}

