//: Playground - noun: a place where people can play

import UIKit

var unixDate: TimeInterval = 1482269845

var usableDate = Date(timeIntervalSince1970: unixDate)

var dateFormatter = DateFormatter()
dateFormatter.dateStyle = .full
dateFormatter.timeStyle = .full
var dateString = dateFormatter.string(from: usableDate)
print(dateString)

let now = Date()
var nowFormatter = DateFormatter()
nowFormatter.dateFormat = "EEEE, MMM dd, y"
var nowString = nowFormatter.string(from: now)

nowFormatter.timeZone = TimeZone(identifier: "Australia/Sydney")
nowString = nowFormatter.string(from: now)

