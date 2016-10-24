# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

<<<<<<< HEAD

#Users

frank = User.create!(name: "Frank Adames", email: "frank@mail.com", password: "foobar", password_confirmation: "foobar")
lilly = User.create!(name: "Lillian Pham", email: "pham@gmail.com", password: "foobar", password_confirmation: "foobar")
will = User.create!(name: "Will Ruck", email: "ruck@gmail.com", password: "foobar", password_confirmation: "foobar")
steve = User.create!(name: "Steve Barnes", email: "steve@gmail.com", password: "foobar", password_confirmation: "foobar")
=======
frank = User.create!(name: "Frank Adames", email: "frank@mail.com", password: "foobar", password_confirmation: "foobar", admin: true)

>>>>>>> 5a1ee018958dbe351607f940035d79221e78070c



99.times do |n|
	name = Faker::Name.name
	email = "example-#{n+1}@mail.com"
	password = "password"
	User.create!(name: name,
				email: email,
				password: 		password,
				password_confirmation: password )
end

<<<<<<< HEAD

#Microposts

=======
>>>>>>> 5a1ee018958dbe351607f940035d79221e78070c
users = User.order(:created_at).take(6)
50.times do
	content = Faker::Lorem.sentence(5)
	users.each { |user| user.microposts.create!(content: content) }
end
<<<<<<< HEAD

#Following relationships

users = User.all
user = users.first
following = users[2..50]
followers = users[3..40]
following.each { |followed| user.follow(followed)}
followers.each { |follower| follower.follow(user)}
=======
>>>>>>> 5a1ee018958dbe351607f940035d79221e78070c
