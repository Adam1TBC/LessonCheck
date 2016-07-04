//
//  DataBase.swift
//  LessonCheck
//
//  Created by s4rcasm on 26.06.16.
//  Copyright © 2016 Адам Смирнов. All rights reserved.
//

import Foundation
import RealmSwift

class DataBase: Object {
    
    dynamic var TeacherName = ""
    dynamic var Subject = ""
    dynamic var StartTime = ""
    dynamic var FinishTime = ""
    dynamic var ClassRoom = ""
    dynamic var SubjectHomeWork = ""
    dynamic var HomeWork = ""
    dynamic var EventName = ""
    dynamic var EventTime = ""
    
    
// Specify properties to ignore (Realm won't persist these)
    
//  override static func ignoredProperties() -> [String] {
//    return []
//  }
}
