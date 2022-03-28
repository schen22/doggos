//
//  Section.swift
//  doggos
//
//  Created by Sarah Chen on 3/12/22.
//

import UIKit
// TODO: Remove file
// 1
class Section: Hashable {
  var id = UUID()
  // 2
  var title: String
  // 3
  var days: [Day]
  
  init(title: String, days: [Day]) {
    self.title = title
    self.days = days
  }
  // 4
  func hash(into hasher: inout Hasher) {
    hasher.combine(id)
  }
  
  static func == (lhs: Section, rhs: Section) -> Bool {
    lhs.id == rhs.id
  }
  
  static func sections() -> [Section] {
    return [
      Section(
        title: "Testing",
        days: DayViewModel().allDays
      ),
    ]
  }
}

