//
//  SundayCell.swift
//  LessonCheck
//
//  Created by Адам Смирнов on 20.07.16.
//  Copyright © 2016 Адам Смирнов. All rights reserved.
//

import UIKit

class SundayCell: UITableViewCell {
	
	
	@IBOutlet weak var Subject: UILabel!
	@IBOutlet weak var Teacher: UILabel!
	@IBOutlet weak var Classroom: UILabel!
	@IBOutlet weak var StartTimeLabel: UILabel!
	@IBOutlet weak var EndTimeLabel: UILabel!
	
	override func awakeFromNib() {
		super.awakeFromNib()
		// Initialization code
	}
	
	override func setSelected(selected: Bool, animated: Bool) {
		super.setSelected(selected, animated: animated)
		
		// Configure the view for the selected state
	}


}
