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
  
}
