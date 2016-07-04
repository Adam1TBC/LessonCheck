//
//  TimetableController.swift
//  LessonCheck
//
//  Created by s4rcasm on 30.06.16.
//  Copyright © 2016 Адам Смирнов. All rights reserved.
//

import UIKit

class TimetableController: UIViewController {
    
    @IBOutlet weak var MondayButton: UIButton!
    @IBOutlet weak var TuesdayButton: UIButton!
    @IBOutlet weak var WednesdayButton: UIButton!
    @IBOutlet weak var ThursdayButton: UIButton!
    @IBOutlet weak var FridayButton: UIButton!
    @IBOutlet weak var SundayButton: UIButton!
    
    
    
   
    
  

    override func viewDidLoad() {
        super.viewDidLoad()

        let scaleMonday       = CGAffineTransformMakeScale(0.5, 0.5)
        let translateMonday   = CGAffineTransformMakeTranslation(-100, 0)
        let scaleTuesday     = CGAffineTransformMakeScale(0.5, 0.5)
        let translateTuesday = CGAffineTransformMakeTranslation(-150, 0)
        let scaleWednesday     = CGAffineTransformMakeScale(0.5, 0.5)
        let translateWednesday = CGAffineTransformMakeTranslation(-200, 0)
        let scaleThursday     = CGAffineTransformMakeScale(0.5, 0.5)
        let translateThursday = CGAffineTransformMakeTranslation(-250, 0)
        let scaleFriday     = CGAffineTransformMakeScale(0.5, 0.5)
        let translateFriday = CGAffineTransformMakeTranslation(-300, 0)
        let scaleSunday     = CGAffineTransformMakeScale(0.5, 0.5)
        let translateSunday = CGAffineTransformMakeTranslation(-350, 0)
        MondayButton.transform  = CGAffineTransformConcat(scaleMonday, translateMonday)
        TuesdayButton.transform    = CGAffineTransformConcat(scaleTuesday, translateTuesday)
        WednesdayButton.transform = CGAffineTransformConcat(scaleWednesday, translateWednesday)
        ThursdayButton.transform = CGAffineTransformConcat(scaleThursday, translateThursday)
        FridayButton.transform = CGAffineTransformConcat(scaleFriday, translateFriday)
        SundayButton.transform = CGAffineTransformConcat(scaleSunday, translateSunday)
        
        
        //Вывод анимации
        UIView.animateWithDuration(1) { () -> Void in
            
            let scaleMonday           = CGAffineTransformMakeScale(1, 1)
            let translateMonday       = CGAffineTransformMakeTranslation(0, 0)
            self.MondayButton.transform = CGAffineTransformConcat(scaleMonday, translateMonday)
            
        }
        
        UIView.animateWithDuration(1.25) { () -> Void in
            
            let scaleTuesday         = CGAffineTransformMakeScale(1, 1)
            let translateTuesday     = CGAffineTransformMakeTranslation(0, 0)
            self.TuesdayButton.transform   = CGAffineTransformConcat(scaleTuesday, translateTuesday)
        }
        
        UIView.animateWithDuration(1.5) { () -> Void in
            
            let scaleWednesday         = CGAffineTransformMakeScale(1, 1)
            let translateWednesday     = CGAffineTransformMakeTranslation(0, 0)
            self.WednesdayButton.transform   = CGAffineTransformConcat(scaleWednesday, translateWednesday)
        }
        
        UIView.animateWithDuration(1.75) { () -> Void in
            
            let scaleThursday         = CGAffineTransformMakeScale(1, 1)
            let translateThursday     = CGAffineTransformMakeTranslation(0, 0)
            self.ThursdayButton.transform   = CGAffineTransformConcat(scaleThursday, translateThursday)
        }
        
        UIView.animateWithDuration(2) { () -> Void in
            
            let scaleFriday         = CGAffineTransformMakeScale(1, 1)
            let translateFriday     = CGAffineTransformMakeTranslation(0, 0)
            self.FridayButton.transform   = CGAffineTransformConcat(scaleFriday, translateFriday)
        }
        
        UIView.animateWithDuration(2.25) { () -> Void in
            
            let scaleSunday         = CGAffineTransformMakeScale(1, 1)
            let translateSunday     = CGAffineTransformMakeTranslation(0, 0)
            self.SundayButton.transform   = CGAffineTransformConcat(scaleSunday, translateSunday)
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
