import json

jsonStr = '{"name":"Matthew Wyskiel","school":"Christian Heritage School","skills":["programming","singing","the Rock Band video game"]}'
jsonObj = json.loads(jsonStr)

name = jsonObj["name"]
school = jsonObj["school"]
skills = jsonObj["skills"]

print("Hello, my name is " + name + " and I go to " + school + " and I am good at: " + ', '.join(skills))
