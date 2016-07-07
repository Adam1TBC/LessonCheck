//
//  StartMenuViewController.swift
//  LessonCheck
//
//  Created by Адам Смирнов on 29.06.16.
//  Copyright © 2016 Адам Смирнов. All rights reserved.
//

import UIKit

class StartMenuViewController: UIViewController {

    @IBOutlet weak var continueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //Animation
        let scaleContinue     = CGAffineTransformMakeScale(0.5, 0.5)
        let translateContinue = CGAffineTransformMakeTranslation(0, 450)
        continueButton.transform  = CGAffineTransformConcat(scaleContinue, translateContinue)
        
        //ViewAnimation
        UIView.animateWithDuration(1.5) { () -> Void in
        
            let scaleContinue           = CGAffineTransformMakeScale(1, 1)
            let translateContinue       = CGAffineTransformMakeTranslation(0, 0)
          
            self.continueButton.transform   = CGAffineTransformConcat(scaleContinue, translateContinue)
            
        }
    }
    
    
        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    //Hide the status bar
    override func prefersStatusBarHidden() -> Bool {
        
        return true
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
