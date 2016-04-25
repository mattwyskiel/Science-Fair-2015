var json = '{"name":"Matthew Wyskiel","school":"Christian Heritage School","skills":["programming","singing","the Rock Band video game"]}';
var obj = JSON.parse(json);

console.log("Hello, my name is " + obj.name + " and I go to " + obj.school + " and I am good at: " + obj.skills);
