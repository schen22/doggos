//
//  DataManager.swift
//  doggos
//
//  Created by Sarah Chen on 3/27/22.
//

import Darwin

enum LocalDataManagerError: Error {
  case notFound
}


class LocalDataManager {
  var allData = [
    Day(
      id: "0",
      title: "3/10",
      thumbnail_name: "espeon"
    ) : ["🐈", "🐈‍⬛", "🐱"],
    Day(
      id: "1",
      title: "3/8",
      thumbnail_name: "flareon"
    ) : ["🔥", "🔥", "🔥"],
    Day(
      id: "2",
      title: "2/15",
      thumbnail_name: "lantern"
    ) : ["💡", "💡", "💡"],
    Day(
      id: "3",
      title: "2/10",
      thumbnail_name: "leafeon"
    ) : ["🍃", "🍃", "🍃"],
    Day(
      id: "4",
      title: "2/8",
      thumbnail_name: "pokemanz"
    ) : ["🐻", "🐨", "🧸"],
  ]

  func retrieveFuzziesForDay(_ day: Day) -> [String] {
    return allData[day] ?? [
      "No value found but here're fuzzies for you! ❤️",
      "🥰 YOU'RE DOING GREAT. though this is an error",
      "🌟 HAVE A STAR. take a break P:"
    ]
  }

  func retreiveAllFuzzies() -> [[String]] {
    return Array(allData.values)
  }

  func addFuzzyForDay(fuzzy: String, day: Day) throws {
    guard var foundDay = allData[day] else {
      throw LocalDataManagerError.notFound
    }
    foundDay.append(fuzzy)
    // TODO: curious if dictionary key/value pairs are
    // pass by reference
    allData.updateValue(foundDay, forKey: day)
  }
}
