//
//  Day.swift
//  doggos
//
//  Created by Sarah Chen on 3/12/22.
//

import UIKit

class Day: Hashable {
  var id = UUID()
  var title: String
  var thumbnail: UIImage?
  
  init(title: String, thumbnail: UIImage? = nil) {
    self.title = title
    self.thumbnail = thumbnail
  }
  // 1
  func hash(into hasher: inout Hasher) {
    // 2
    hasher.combine(id)
  }
  // 3
  static func == (lhs: Day, rhs: Day) -> Bool {
    lhs.id == rhs.id
  }
  
  static func dayList() -> [Day] {
    return [
      Day(
        title: "3/10",
        thumbnail: UIImage(named: "espeon")
      ),
      Day(
        title: "3/8",
        thumbnail: UIImage(named: "flareon")
      ),
      Day(
        title: "2/15",
        thumbnail: UIImage(named: "lantern")
      ),
      Day(
        title: "2/10",
        thumbnail: UIImage(named: "leafeon")
      ),
      Day(
        title: "2/8",
        thumbnail: UIImage(named: "pokemanz")
      ),
    ]
  }
}

