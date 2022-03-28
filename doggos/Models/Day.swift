//
//  Day.swift
//  doggos
//
//  Created by Sarah Chen on 3/12/22.
//

import UIKit

struct Day: Codable, Hashable {
  var id: String
  var title: String
  var thumbnail_name: String
  
  func hash(into hasher: inout Hasher) {
    hasher.combine(id)
  }
  
  static func == (lhs: Day, rhs: Day) -> Bool {
    lhs.id == rhs.id
  }
  
  static func dayList() -> [Day] {
    return [
      Day(
        id: "0",
        title: "3/10",
        thumbnail_name: "espeon"
      ),
      Day(
        id: "1",
        title: "3/8",
        thumbnail_name: "flareon"
      ),
      Day(
        id: "2",
        title: "2/15",
        thumbnail_name: "lantern"
      ),
      Day(
        id: "3",
        title: "2/10",
        thumbnail_name: "leafeon"
      ),
      Day(
        id: "4",
        title: "2/8",
        thumbnail_name: "pokemanz"
      ),
    ]
  }
}
