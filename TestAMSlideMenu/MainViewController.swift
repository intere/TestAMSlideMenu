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
        var identifier: String?
        switch(indexPath.row) {
        case 0:
            identifier = "firstSegueLeft"
            
        case 1:
            identifier = "secondSegueLeft"
        default:
            identifier = nil
        }
        return identifier
    }
    
    override func segueIdentifierForIndexPathInRightMenu(indexPath: NSIndexPath!) -> String! {
        var identifier: String?
        switch(indexPath.row) {
        case 0:
            identifier = "firstSegueRight"
        case 1:
            identifier = "secondSegueRight"
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
    
    override func configureRightMenuButton(button: UIButton!) {
        button.frame = CGRectMake(0, 0, 40, 40)
        let image: UIImage! = UIImage(named: "hamburger.png")
        button.setImage(image, forState: UIControlState.Normal)
    }
    
    override func leftMenuWidth() -> CGFloat {
        return 200
    }
    
    override func rightMenuWidth() -> CGFloat {
        return 200
    }
    
    override func deepnessForLeftMenu() -> Bool {
        return true
    }
}

