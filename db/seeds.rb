Subject.destroy_all
Subject.create!([
  { name: "English", description: "English course"},
  { name: "Math", description: "Math course"},
  { name: "Polish", description: "Polish course"}  
])
 
p "Created #{Subject.count} subjects."

Role.destroy_all
Role.create!([
  {id: 1, name: 'Teacher'},
  {id: 2, name: 'Student'}
])

p "Created #{Role.count} roles."

User.destroy_all

User.create!([
  {id: 1, role_id: 2, email: 'jk@example.com', password: 'valid_password', password_confirmation: 'valid_password'},
  {id: 2, role_id: 2, email: 'ai@example.com', password: 'valid_password', password_confirmation: 'valid_password'},
  {id: 3, role_id: 2, email: 'an@example.com', password: 'valid_password', password_confirmation: 'valid_password'}
])

p "Created #{User.count} users."

Division.destroy_all
Division.create!([
  {id: 1, name: 'Ia'},
  {id: 2, name: 'IIb'}
])

p "Created #{Division.count} divisions."