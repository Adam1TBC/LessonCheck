//
//  MainMenuViewController.swift
//  LessonCheck
//
//  Created by Адам Смирнов on 29.06.16.
//  Copyright © 2016 Адам Смирнов. All rights reserved.
//

import UIKit

class MainMenuViewController: UIViewController {

    @IBOutlet weak var homeworkButton: UIButton!
    @IBOutlet weak var eventsButton: UIButton!
    @IBOutlet weak var timeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    //Анимация
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        
        let scaleHomework       = CGAffineTransformMakeScale(0.5, 1)
        let translateHomework   = CGAffineTransformMakeTranslation(-300, 0)
        let scaleEvents         = CGAffineTransformMakeScale(0.5, 1)
        let translateEvents     = CGAffineTransformMakeTranslation(300, 0)
        let scaleTime           = CGAffineTransformMakeScale(0.5, 1)
        let translateTime       = CGAffineTransformMakeTranslation(-700, 0)
        
        
        homeworkButton.transform = CGAffineTransformConcat(scaleHomework, translateHomework)
        eventsButton.transform = CGAffineTransformConcat(scaleEvents, translateEvents)
        timeButton.transform = CGAffineTransformConcat(scaleTime, translateTime)
        
        //Вывод анимации
        UIView.animateWithDuration(2) { () -> Void in
            let scaleHomework       = CGAffineTransformMakeScale(1, 1)
            let translateHomework   = CGAffineTransformMakeTranslation(0, 0)
            let scaleEvents         = CGAffineTransformMakeScale(1, 1)
            let translateEvents     = CGAffineTransformMakeTranslation(0, 0)
            let scaleTime           = CGAffineTransformMakeScale(1, 1)
            let translateTime       = CGAffineTransformMakeTranslation(0, 0)
            self.homeworkButton.transform   = CGAffineTransformConcat(scaleHomework, translateHomework)
            self.eventsButton.transform     = CGAffineTransformConcat(scaleEvents, translateEvents)
            self.timeButton.transform       = CGAffineTransformConcat(scaleTime, translateTime)
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
