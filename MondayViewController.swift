//
//  MondayViewController.swift
//  LessonCheck
//
//  Created by Адам Смирнов on 03.07.16.
//  Copyright © 2016 Адам Смирнов. All rights reserved.
//

import UIKit
import RealmSwift

class MondayViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {

    @IBOutlet weak var myTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.myTableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        self.myTableView.dataSource = self
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell = self.myTableView.dequeueReusableCellWithIdentifier("Cell")! as UITableViewCell
        
        
        return cell
        
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
