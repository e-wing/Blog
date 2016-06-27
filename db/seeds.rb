# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(first_name: 'DevFirst', last_name: 'DevLast', email: 'dev@myblog.com', password: 'secretpassword123', time_zone: "Pacific Time (US & Canada)",
     confirmed_at: Time.now, gender: 'female',   accept_terms: true)