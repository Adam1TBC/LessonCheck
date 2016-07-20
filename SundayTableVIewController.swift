//
//  SundayTableVIewController.swift
//  LessonCheck
//
//  Created by Адам Смирнов on 20.07.16.
//  Copyright © 2016 Адам Смирнов. All rights reserved.
//

import UIKit
import RealmSwift
import KRProgressHUD

class SundayTableViewController: UITableViewController {
	
	let realm = try! Realm()
	
	//Refresh
	var refresh: UIRefreshControl!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		//Refresh
		refresh = UIRefreshControl()
		refresh.attributedTitle = NSAttributedString(string: "Pull to refresh")
		refresh.addTarget(self, action: #selector(update), forControlEvents: .ValueChanged)
		tableView.addSubview(refresh) // not required when using UITableViewController
	}
	
	override func viewDidAppear(animated: Bool) {
		super.viewDidAppear(true)
		
		tableView.reloadData()
	}
	//Func Update / Refresh
	func update(){
		tableView.reloadData()
		refresh.endRefreshing()
	}
	override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
		return 1
	}
	
	override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		let database = realm.objects(DataBaseSunday)
		return database.count
	}
	
	override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! SundayCell
		
		let database = realm.objects(DataBaseSunday)
		
		cell.Subject.text! = database[indexPath.row].Subject
		cell.Teacher.text! = database[indexPath.row].TeacherName
		cell.Classroom.text! = database[indexPath.row].ClassRoom
		cell.StartTimeLabel.text! = database[indexPath.row].StartTime
		cell.EndTimeLabel.text! = database[indexPath.row].FinishTime
		
		return cell
	}
	
	override func prefersStatusBarHidden() -> Bool {
		
		return true
	}
	
	override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
		
		let database = realm.objects(DataBaseSunday)
		//Realm Delete
		if editingStyle == .Delete {
			try! realm.write({
				realm.delete(database[indexPath.row])
			})
			tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade) // Animation on Delete
		}
	}
	//delete all objects
	@IBAction func deleteAllObjects(sender: UIBarButtonItem) {
		
		let database = realm.objects(DataBaseSunday)
		
		try! realm.write {
			realm.delete(database)
			KRProgressHUD.showSuccess(progressHUDStyle: .Black, message: "Success")
			tableView.reloadData()
		}
	}


}
