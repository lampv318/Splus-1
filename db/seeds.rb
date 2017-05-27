School.create! name: "School of Information and Communication Technology",
  abbreviation: "SoICT"

User.create! name: "Phạm Văn Lâm", identify_number: "20142493", school_id: "1",
  password: "123456", password_confirmation: "123456"

User.create! name: "Hoàng Việt Khoa", identify_number: "20142349",
  school_id: "1", password: "123456", password_confirmation: "123456"

50.times do |n|
  name = Faker::Name.name
  User.create! name: name, identify_number: "#{20140000+n*10}", school_id: "1",
    password: "123456", password_confirmation: "123456"
end

Semester.create!

Course.create!

50.times do |n|
  code = Faker::Number.number(5)
  Classroom.create! class_code: code, course_id: "1", semester_id: "1"
end

#user join classroom
users = User.all
user = users.second
classrooms = Classroom.all
classroom = classrooms.first
some_class = classrooms[1..50]
some_user = users[1..40]
some_class.each do |c|
  Participation.create! user_id: user.id, classroom_id: c.id
end

some_user.each do |u|
  Participation.create! user_id: u.id, classroom_id: classroom.id
end

users = User.order(:created_at).take(6)
50.times do
  title = Faker::Lorem.sentence(5)
  content = Faker::Lorem.paragraph(20)
  users.each {|user| user.posts.create! title: title, classroom_id: 2,
    content: content}
end
