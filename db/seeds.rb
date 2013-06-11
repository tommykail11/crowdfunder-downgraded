# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Project.destroy_all

user = User.create!(username: "AssyMcGee",email: "assymcgee@example.com", password: "password")

project1 = user.projects.create!(title: "Asses of Fire", teaser: "The Story of One Man... and His Ass",
  description: "The streets of Exeter are running rampant as Assy McGee takes a leave of absence to find himself.", goal: 13000)

project2 = user.projects.create!(title: "The Unconscious Ass", teaser: "A Complete Ass That Doesn't Care About the Environment",
  description: "Exeter's favorite detective cannot find the garbage can for the life of him... he doesn't recycle either.", goal: 24000)

project3 = user.projects.create!(title: "Assy Goes a Dancing", teaser: "Assy Dances into the Wee Hours of the Morning",
  description: "Assy brings us along for the journey as he discovers his new found love of Salsa dancing.", goal: 13000)


