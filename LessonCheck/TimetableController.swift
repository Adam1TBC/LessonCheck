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
    
    
    //animation
    func animation(time: NSTimeInterval, button: UIButton) {
        
        UIView.animateWithDuration(time) { () -> Void in
            
            let scale           = CGAffineTransformMakeScale(1, 1)
            let translate      = CGAffineTransformMakeTranslation(0, 0)
            button.transform = CGAffineTransformConcat(scale, translate)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let scale      = CGAffineTransformMakeScale(0.5, 0.5)
        let translateMonday   = CGAffineTransformMakeTranslation(-100, 0)
        let translateTuesday = CGAffineTransformMakeTranslation(-150, 0)
        let translateWednesday = CGAffineTransformMakeTranslation(-200, 0)
        let translateThursday = CGAffineTransformMakeTranslation(-250, 0)
        let translateFriday = CGAffineTransformMakeTranslation(-300, 0)
        let translateSunday = CGAffineTransformMakeTranslation(-350, 0)
        
            MondayButton.transform  = CGAffineTransformConcat(scale, translateMonday)
            TuesdayButton.transform    = CGAffineTransformConcat(scale, translateTuesday)
            WednesdayButton.transform = CGAffineTransformConcat(scale, translateWednesday)
            ThursdayButton.transform = CGAffineTransformConcat(scale, translateThursday)
            FridayButton.transform = CGAffineTransformConcat(scale, translateFriday)
            SundayButton.transform = CGAffineTransformConcat(scale, translateSunday)
        
        //Вывод анимации
        animation(1, button: MondayButton)
        animation(1.25, button: TuesdayButton)
        animation(1.5, button: WednesdayButton)
        animation(1.75, button: ThursdayButton)
        animation(2, button: FridayButton)
        animation(2.25, button: SundayButton)
        
        
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
