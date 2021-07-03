# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
justin = User.create!(email: "user2@gmail.com", password: "123456", first_name: "Justin", last_name: "Zhao")
Friend.create!(price: 150, description: "Current 2nd year student at the University of Pennsylvania studying political science and economics. Eager to upskill and learn more about coding.", location: "Doncaster", user_id: justin.id)

seamus = User.create!(email: "seamus@gmail.com", password: "123456", first_name: "Seamus", last_name: "Bellew")
Friend.create!(price: 180, description: "Learning to code so I don't feel so lost in this world. Currently working as a Growth Marketer - hoping to eventually make the transition to product management.", location: "Elwood", user_id: seamus.id)

nic = User.create!(email: "nic@gmail.com", password: "123456", first_name: "Nic", last_name: "Curran")
Friend.create!(price: 100, description: "A wanderlust vagabond journeying toward a sustainable future where I can build fun websites and programs for people while on the road. Love a bit of learning and looking forward to creating some exciting projects in this space.", location: "Brunswick West", user_id: nic.id)

edmond = User.create!(email: "edmond@gmail.com", password: "123456", first_name: "Edmond", last_name: "Yeo")
Friend.create!(price: 170, description: "I am currently a software engineering analyst working at an IT consultancy. I am learning to code in hopes to eventually switch careers to becoming a full stack developer.", location: "Carlton", user_id: edmond.id)

jay = User.create!(email: "jay@gmail.com", password: "123456", first_name: "Jay", last_name: "Reidy")
Friend.create!(price: 190, description: "I've tried many different jobs in my working life and I acknowledged in this time, things I enjoy in a career which are problem solving, challenges and learning new things. At the time I acknowledged this, I wasn't aware I could get all of this from coding. So when I started to learn coding I was instantly hooked.", location: "Melbourne", user_id: jay.id)

alex = User.create!(email: "alex@gmail.com", password: "123456", first_name: "Alex", last_name: "Vidal")

victoria = User.create(email: "vic@gmail.com", password: "123456", first_name: "Vic", last_name: "Altomare")
