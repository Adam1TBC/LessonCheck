//
//  MondayViewController.swift
//  LessonCheck
//
//  Created by Адам Смирнов on 03.07.16.
//  Copyright © 2016 Адам Смирнов. All rights reserved.
//

import UIKit

class MondayViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {

    @IBOutlet weak var myTableView: UITableView!
    
    let items = ["121" , "12"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell = self.myTableView.dequeueReusableCellWithIdentifier("Cell")! as UITableViewCell
        
        cell.textLabel?.text = items[indexPath.row]
        return cell
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
