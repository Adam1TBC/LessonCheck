//
//  MainMenuViewController.swift
//  LessonCheck
//
//  Created by Адам Смирнов on 29.06.16.
//  Copyright © 2016 Адам Смирнов. All rights reserved.
//

import UIKit
import NKDropdownMenu


class MainMenuViewController: UIViewController {

    @IBOutlet weak var homeworkButton: UIButton!
    @IBOutlet weak var eventsButton: UIButton!
    @IBOutlet weak var timeButton: UIButton!
    
    //Анимация
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let items = ["Most Popular", "Latest", "Trending", "Nearest", "Top Picks"]
        
        let hamburgerMenu: NKDropdownMenu = NKDropdownMenu(items: items)
        
        hamburgerMenu.didSelectItemAtIndexHandler = {(indexPath: Int) -> () in
            print("Did select item at index: \(indexPath)")
            
        }
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: hamburgerMenu)
        
        
        let scaleHomework       = CGAffineTransformMakeScale(0, 0)
        let translateHomework   = CGAffineTransformMakeTranslation(-300, 0)
        let scaleEvents         = CGAffineTransformMakeScale(0, 0)
        let translateEvents     = CGAffineTransformMakeTranslation(300, 0)
        let scaleTime           = CGAffineTransformMakeScale(0, 0)
        let translateTime       = CGAffineTransformMakeTranslation(0, 500)
        
        
        homeworkButton.transform = CGAffineTransformConcat(scaleHomework, translateHomework)
        eventsButton.transform = CGAffineTransformConcat(scaleEvents, translateEvents)
        timeButton.transform = CGAffineTransformConcat(scaleTime, translateTime)
        
        //Вывод анимации
        UIView.animateWithDuration(2) { () -> Void in
            let scale       = CGAffineTransformMakeScale(1, 1)
            let translate   = CGAffineTransformMakeTranslation(0, 0)
            self.homeworkButton.transform   = CGAffineTransformConcat(scale, translate)
        }
        UIView.animateWithDuration(2) { () -> Void in
            
            let scale = CGAffineTransformMakeScale(1 , 1)
            let translate = CGAffineTransformMakeTranslation(0, 0)
            
            self.eventsButton.transform = CGAffineTransformConcat(scale, translate)
            
            
        }
        
        UIView.animateWithDuration(2.5) { () -> Void in
            
            let scale = CGAffineTransformMakeScale(1 , 1)
            let translate = CGAffineTransformMakeTranslation(0, 0)
            
            self.timeButton.transform = CGAffineTransformConcat(scale, translate)
            
            
        }


        // Do any additional setup after loading the view.
    }
    
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
