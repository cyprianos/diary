Subject.find_or_create_by( id: 1, name: "English", description: "English course")
Subject.find_or_create_by( id: 2, name: "Math", description: "Math course")
Subject.find_or_create_by( id:3, name: "Polish", description: "Polish course")  

p "Created #{Subject.count} subjects."

Role.find_or_create_by( id: 1, name: 'Teacher')
Role.find_or_create_by( id: 2, name: 'Student')

p "Created #{Role.count} roles."

User.create( id: 1, role_id: 2, email: 'jk@example.com', password: 'valid_password', password_confirmation: 'valid_password')
User.create( id: 2, role_id: 2, email: 'ai@example.com', password: 'valid_password', password_confirmation: 'valid_password')
User.create( id: 3, role_id: 2, email: 'an@example.com', password: 'valid_password', password_confirmation: 'valid_password')

p "Created #{User.count} users."

Division.find_or_create_by( id: 1, name: 'Ia' )
Division.find_or_create_by( id: 2, name: 'IIb')

p "Created #{Division.count} divisions."

Grade.find_or_create_by( id: 1, value: 5, user_id: 1, subject_id: 1 )
Grade.find_or_create_by( id: 2, value: 4, user_id: 2, subject_id: 2 )
Grade.find_or_create_by( id: 3, value: 3, user_id: 3, subject_id: 3 )
Grade.find_or_create_by( id: 4, value: 2, user_id: 1, subject_id: 1 )

p "Created #{Grade.count} grades."
