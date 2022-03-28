//
//  DayViewModel.swift
//  doggos
//
//  Created by Sarah Chen on 3/18/22.
//

import Foundation

class DayViewModel {
  let dataManager: LocalDataManager = LocalDataManager()
  lazy var allDays: [Day] = {
    return self.retrieveDays()
  }()
  
  func retrieveDays() -> [Day] {
    return dataManager.retrieveAllDays()
  }
  
  func addFuzzyForDay(fuzzy: String, day: Day) {
    do {
      try dataManager.addFuzzyForDay(fuzzy: fuzzy, day: day)
    } catch LocalDataManagerError.notFound {
      print("Unable to find day: \(day)")
    } catch {
      print("Unexpected error: \(error)")
    }
  }

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
