import Foundation

let jsonStr = "{\"name\": \"Matthew Wyskiel\", \"school\": \"Christian Heritage School\", \"skills\": [\"programming\",\"singing\",\"the Rock Band video game\"]}"
let jsonData = jsonStr.dataUsingEncoding(NSUTF8StringEncoding)!
do {
  let jsonDict = try NSJSONSerialization.JSONObjectWithData(jsonData, options: NSJSONReadingOptions(rawValue: 0))

  let name = jsonDict["name"]
  let school = jsonDict["school"]
  let skills = jsonDict["skills"]

  print("Hello, my name is \(name), I go to \(school), and I am good at \(skills)")
} catch let error {
  print("\(error)")
}
