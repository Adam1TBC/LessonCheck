//
//  ViewController.swift
//  LessonCheck
//
//  Created by Адам Смирнов & Никита Василенко  on 14.06.16.
//  Copyright © 2016 Адам Смирнов & Никита Василенко. All rights reserved.
//

import UIKit
import NKDropdownMenu

class ViewController: UIViewController {

    override func viewDidLoad() {
        let items = ["Most Popular", "Latest", "Trending", "Nearest", "Top Picks"]
        
        let hamburgerMenu: NKDropdownMenu = NKDropdownMenu(items: items)
        
        hamburgerMenu.didSelectItemAtIndexHandler = {(indexPath: Int) -> () in
            print("Did select item at index: \(indexPath)")
            
        }
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: hamburgerMenu)
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
}

