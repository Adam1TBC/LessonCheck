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
    @IBOutlet weak var thanksButton: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //Анимация
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        let scaleThanks       = CGAffineTransformMakeScale(0.5, 0.5)
        let translateThanks   = CGAffineTransformMakeTranslation(0, -200)
        let scaleContinue     = CGAffineTransformMakeScale(0.5, 0.5)
        let translateContinue = CGAffineTransformMakeTranslation(0, 200)
        continueButton.transform  = CGAffineTransformConcat(scaleContinue, translateContinue)
        thanksButton.transform    = CGAffineTransformConcat(scaleThanks, translateThanks)
        
        //Вывод анимации
        UIView.animateWithDuration(2) { () -> Void in
            
            let scaleThanks           = CGAffineTransformMakeScale(1, 1)
            let translateThanks       = CGAffineTransformMakeTranslation(0, 0)
            let scaleContinue         = CGAffineTransformMakeScale(1, 1)
            let translateContinue     = CGAffineTransformMakeTranslation(0, 0)
            self.continueButton.transform = CGAffineTransformConcat(scaleContinue, translateContinue)
            self.thanksButton.transform   = CGAffineTransformConcat(scaleThanks, translateThanks)
            
        }
        
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
