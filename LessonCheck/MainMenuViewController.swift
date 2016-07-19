//
//  MainMenuViewController.swift
//  LessonCheck
//
//  Created by Адам Смирнов on 29.06.16.
//  Copyright © 2016 Адам Смирнов. All rights reserved.
//

import UIKit
import RealmSwift
import KRProgressHUD


class MainMenuViewController: UIViewController {

    @IBOutlet weak var homeworkButton: UIButton!
    @IBOutlet weak var eventsButton: UIButton!
    @IBOutlet weak var timeButton: UIButton!
	
	let realm = try! Realm()
    
    override func viewDidLoad() {
        super.viewDidLoad()
		
		
		
		
        let scale               = CGAffineTransformMakeScale(0, 0)
        let translateHomework   = CGAffineTransformMakeTranslation(-300, 0)
        let translateEvents     = CGAffineTransformMakeTranslation(300, 0)
        let translateTime       = CGAffineTransformMakeTranslation(0, 500)
        
        homeworkButton.transform = CGAffineTransformConcat(scale, translateHomework)
        eventsButton.transform = CGAffineTransformConcat(scale, translateEvents)
        timeButton.transform = CGAffineTransformConcat(scale, translateTime)
        
        //Вывод анимации
        UIView.animateWithDuration(1.75) { () -> Void in
            let scale       = CGAffineTransformMakeScale(1, 1)
            let translate   = CGAffineTransformMakeTranslation(0, 0)
            self.homeworkButton.transform   = CGAffineTransformConcat(scale, translate)
        }
        UIView.animateWithDuration(1.75) { () -> Void in
            
            let scale = CGAffineTransformMakeScale(1 , 1)
            let translate = CGAffineTransformMakeTranslation(0, 0)
            
            self.eventsButton.transform = CGAffineTransformConcat(scale, translate)
            
            
        }
        UIView.animateWithDuration(2) { () -> Void in
            
            let scale = CGAffineTransformMakeScale(1 , 1)
            let translate = CGAffineTransformMakeTranslation(0, 0)
            
            self.timeButton.transform = CGAffineTransformConcat(scale, translate)
            
            
        }
    }
	
	class func show(
		progressHUDStyle progressStyle :KRProgressHUDStyle? = nil,
		maskType type:KRProgressHUDMaskType? = nil,
		activityIndicatorStyle indicatorStyle :KRProgressHUDActivityIndicatorStyle? = nil,
		message :String? = nil,
		font :UIFont? = nil,
		image :UIImage? = nil,
		completion: (()->())? = nil
	)
	{
	// Example
	}
	
	
	class func updateLabel(text: String){
		
	}
	
	


    //Hide the status bar
    override func prefersStatusBarHidden() -> Bool {
        
        return true
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
