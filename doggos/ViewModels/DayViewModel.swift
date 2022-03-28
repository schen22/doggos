//
//  DayViewModel.swift
//  doggos
//
//  Created by Sarah Chen on 3/18/22.
//

import Foundation

class DayViewModel {
//  func retrieveDay(_ success: Callback) -> Day {
//    return Day(title: "Day 1", thumbnail: UIImage(named: "flareon"))
//  }

  let contentJson = """
    [
      {
        "id": "0",
        "title": "3/10",
        "thumbnail_name": "espeon",
        "fuzzies": []
      },
      {
        "id": "1",
        "title": "3/8",
        "thumbnail_name": "flareon",
        "fuzzies": []
      },
      {
        "id": "2",
        "title": "2/18",
        "thumbnail_name": "lantern",
        "fuzzies": []
      }
    ]
  """
  
  func parseDayJson() {
    let storedData = Data(contentJson.utf8)
    let decoder = JSONDecoder()
    do {
      let result = try decoder.decode([Day].self, from: storedData)
      print(result)
    } catch let error {
      print("decoding error ocurred: \(error)")
    }
  }
}
