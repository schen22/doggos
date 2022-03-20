//
//  Day.swift
//  doggos
//
//  Created by Sarah Chen on 3/12/22.
//

import UIKit

struct Day: Codable {
  var id: String
  var title: String
  var thumbnail_name: String
  var fuzzies: [String]
  
  static func dayList() -> [Day] {
    return [
      Day(
        id: "0",
        title: "3/10",
        thumbnail_name: "espeon",
        fuzzies: []
      ),
      Day(
        id: "1",
        title: "3/8",
        thumbnail_name: "flareon",
        fuzzies: []
      ),
      Day(
        id: "2",
        title: "2/15",
        thumbnail_name: "lantern",
        fuzzies: []
      ),
      Day(
        id: "3",
        title: "2/10",
        thumbnail_name: "leafeon",
        fuzzies: []
      ),
      Day(
        id: "4",
        title: "2/8",
        thumbnail_name: "pokemanz",
        fuzzies: []
      ),
    ]
  }
}
