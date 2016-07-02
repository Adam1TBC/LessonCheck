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
    var progressView: UIProgressView?
    var progressLabel: UILabel?
    
    var timer: NSTimer?
    override func viewDidLoad() {
        super.viewDidLoad()
        addControls()
        addGestures()
        
        
        let scaleThanks       = CGAffineTransformMakeScale(0.5, 0.5)
        let translateThanks   = CGAffineTransformMakeTranslation(0, -250)
        let scaleContinue     = CGAffineTransformMakeScale(0.5, 0.5)
        let translateContinue = CGAffineTransformMakeTranslation(0, 250)
        continueButton.transform  = CGAffineTransformConcat(scaleContinue, translateContinue)
        thanksButton.transform    = CGAffineTransformConcat(scaleThanks, translateThanks)
        
        UIView.animateWithDuration(2) { () -> Void in
            
            let scaleThanks           = CGAffineTransformMakeScale(1, 1)
            let translateThanks       = CGAffineTransformMakeTranslation(0, 0)
          
            self.thanksButton.transform   = CGAffineTransformConcat(scaleThanks, translateThanks)
            
        }

        
        
        

        
        

        // Do any additional setup after loading the view.
    }
    func addControls() {
        
        // Create Progress View Control
        
        progressView = UIProgressView(progressViewStyle: UIProgressViewStyle.Default)
        progressView?.center = self.view.center
        
        view.addSubview(progressView!)
        
        // Add Label
        
        progressLabel = UILabel()
        let frame = CGRectMake(view.center.x - 25, view.center.y - 100, 100, 50)
        progressLabel?.frame = frame
        
        view.addSubview(progressLabel!)
        
    }
    
    //MARK:- Gestures
    
    func addGestures() {
        
        // Add Single Tap and Doube Tap Gestures
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(StartMenuViewController.handleTap(_:)))
        tap.numberOfTapsRequired = 1
        
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(StartMenuViewController.handleDoubleTap(_:)))
        doubleTap.numberOfTapsRequired = 2
        
        view.addGestureRecognizer(tap)
        view.addGestureRecognizer(doubleTap)
        tap.requireGestureRecognizerToFail(doubleTap)
        
    }
    
    //MARK:- Single Tap
    
    // Start Progress View
    
    func handleTap(sender: UITapGestureRecognizer) {
        if sender.state == .Ended {
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(StartMenuViewController.updateProgress), userInfo: nil, repeats: true)
        }
    }
    
    //MARK:- Double Tap
    
    // Reset Progress View
    
    func handleDoubleTap(sender: UITapGestureRecognizer) {
        if sender.state == .Ended {
            progressView?.progress = 0
            progressLabel?.text = "0 %"
            timer?.invalidate()
        }
    }
    
    //MARK:- Increment Progress
    
    func updateProgress() {
        progressView?.progress += 0.05
        
        let progressValue = self.progressView?.progress
        progressLabel?.text = "\(progressValue! * 100) %"
        
        //Вывод анимации
        if(self.progressView?.progress == 1) {
            progressView?.hidden = true
            progressLabel?.hidden = true
            UIView.animateWithDuration(2) { () -> Void in
                
                let scaleThanks           = CGAffineTransformMakeScale(1, 1)
                let translateThanks       = CGAffineTransformMakeTranslation(0, 0)
                let scaleContinue         = CGAffineTransformMakeScale(1, 1)
                let translateContinue     = CGAffineTransformMakeTranslation(0, 0)
                self.continueButton.transform = CGAffineTransformConcat(scaleContinue, translateContinue)
                self.thanksButton.transform   = CGAffineTransformConcat(scaleThanks, translateThanks)
                
            }
        }
    }
 
    //Анимация
  
    
        
        
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
