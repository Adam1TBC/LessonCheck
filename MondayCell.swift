//
//  MondayCell.swift
//  LessonCheck
//
//  Created by s4rcasm on 07.07.16.
//  Copyright © 2016 Адам Смирнов. All rights reserved.
//

import UIKit

class MondayCell: UITableViewCell {

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
