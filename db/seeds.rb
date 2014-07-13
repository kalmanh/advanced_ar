Job.destroy_all
Person.destroy_all

Person.create [
  { first_name: "Kalman", last_name: "Smith", age: 33, login: "kalman", pass: "abc123" }, 
  { first_name: "John", last_name: "Whatever", age: 27, login: "johnw", pass: "123abc" }, 
  { first_name: "Michael", last_name: "Smith", age: 15, login: "michael", pass: "password" }, 
  { first_name: "Josh", last_name: "Oreck", age: 57, login: "josh", pass: "not_telling" }, 
  { first_name: "John", last_name: "Smith", age: 27, login: "john", pass: "secret" }, 
  { first_name: "Bill", last_name: "Gates", age: 75, login: "bill", pass: "no_idea" }, 
  { first_name: "LeBron", last_name: "James", age: 30, login: "lebron", pass: "lejames" } 
]

Person.first.jobs.create [
  { title: "Developer", company: "MS", position_id: "#1234" },
  { title: "Developer", company: "MS", position_id: "#1235" }
]

Person.last.jobs.create [
  { title: "Sr. Developer", company: "MS", position_id: "#1234" },
  { title: "Sr. Developer", company: "MS", position_id: "#1235" }
]