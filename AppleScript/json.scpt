tell application "JSON Helper"
	set myRecord to read JSON from "{\"name\" : \"Matthew Wyskiel\", \"school\" : \"Christian Heritage School\", \"skills\" : [\"programming\",\"singing\",\"the Rock Band video game\"]}"
  set myName to |name| of myRecord
  set school to |school| of myRecord
  set skills to |skills| of myRecord

  log ("Hello, my name is " & myName & " and I go to " & school & " and I am good at: " & skills)

end tell
