require 'json'

jsonStr = '{"name":"Matthew Wyskiel","school":"Christian Heritage School","skills":["programming","singing","the Rock Band video game"]}'
jsonObj = JSON.parse(jsonStr)

name = jsonObj["name"]
school = jsonObj["school"]
skills = jsonObj["skills"]

puts "Hello, my name is #{name}, I go to #{school}, and I am good at #{skills}"
