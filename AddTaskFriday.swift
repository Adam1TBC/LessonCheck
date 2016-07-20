//
//  AddTaskFriday.swift
//  LessonCheck
//
//  Created by Адам Смирнов on 20.07.16.
//  Copyright © 2016 Адам Смирнов. All rights reserved.
//

import UIKit
import RealmSwift
import KRProgressHUD

class AddTaskFriday: UITableViewController {
	
	
	@IBOutlet weak var startLabel: UILabel!
	@IBOutlet weak var endLabel: UILabel!
	@IBOutlet weak var datePicker: UIDatePicker!
	@IBOutlet weak var datePickerEnd: UIDatePicker!
	@IBOutlet weak var SubjectTextField: UITextField!
	@IBOutlet weak var teacherTextField: UITextField!
	@IBOutlet weak var classroomTextField: UITextField!
	
	let realm  = try! Realm()
	
	@IBAction func addButtonAction(sender: AnyObject) {
		let database = DataBaseFriday()
		
		database.Subject = SubjectTextField.text!
		database.TeacherName = teacherTextField.text!
		database.ClassRoom = classroomTextField.text!
		database.StartTime = startLabel.text!
		database.FinishTime = endLabel.text!
		
		do {
			_ = try Realm()
		} catch _ as NSError {
			KRProgressHUD.showError(progressHUDStyle: .Black , message: "Error")
		}
		
		try! realm.write({
			realm.add(database)
		})
		
		KRProgressHUD.showSuccess(progressHUDStyle: .Black, message: "Success")
		
	}
	override func viewDidLoad() {
		super.viewDidLoad()
		print(Realm.Configuration.defaultConfiguration.description)
		
		
		datePickerChanged(startLabel, picker: datePicker, end: endLabel, endPicker: datePickerEnd)
	}
	
	func datePickerChanged (start: UILabel, picker: UIDatePicker, end: UILabel, endPicker: UIDatePicker) {
		start.text = NSDateFormatter.localizedStringFromDate(picker.date, dateStyle: .NoStyle, timeStyle: NSDateFormatterStyle.ShortStyle)
		end.text = NSDateFormatter.localizedStringFromDate(endPicker.date, dateStyle: .NoStyle, timeStyle: .ShortStyle)
		
	}
	
	
	override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
		if indexPath.section == 3 && indexPath.row == 0 {
			toggleDatepicker()
		}
	}
	
	var datePickerHidden = true
	
	override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
		if datePickerHidden && indexPath.section == 3 && indexPath.row == 1 {
			return 0
		}
		else {
			return super.tableView(tableView, heightForRowAtIndexPath: indexPath)
		}
	}
	
	func toggleDatepicker() {
		
		datePickerHidden = !datePickerHidden
		
		tableView.beginUpdates()
		tableView.endUpdates()
		
	}
	
	@IBAction func datePickerValue(sender: UIDatePicker) {
		datePickerChanged(startLabel, picker: datePicker, end: endLabel, endPicker: datePickerEnd)
		
	}
	
	//Hide the status bar
	override func prefersStatusBarHidden() -> Bool {
		
		return true
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
	
	
	
	
	
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	/*
	// MARK: - Table view data source
	
	override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
	// #warning Incomplete implementation, return the number of sections
	return 0
	}
	
	override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
	// #warning Incomplete implementation, return the number of rows
	return 0
	}
	*/
	
	
	/*
	override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
	let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)
	
	// Configure the cell...
	
	return cell
	}
	*/
	
	/*
	// Override to support conditional editing of the table view.
	override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
	// Return false if you do not want the specified item to be editable.
	return true
	}
	*/
	
	/*
	// Override to support editing the table view.
	override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
	if editingStyle == .Delete {
	// Delete the row from the data source
	tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
	} else if editingStyle == .Insert {
	// Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
	}
	}
	*/
	
	/*
	// Override to support rearranging the table view.
	override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
	
	}
	*/
	
	/*
	// Override to support conditional rearranging of the table view.
	override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
	// Return false if you do not want the item to be re-orderable.
	return true
	}
	*/
	
	/*
	// MARK: - Navigation
	
	// In a storyboard-based application, you will often want to do a little preparation before navigation
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
	// Get the new view controller using segue.destinationViewController.
	// Pass the selected object to the new view controller.
	}
	*/

}
