# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

welcome = User.where(email: 'conmakris99@gmail.com').first
welcome.delete if welcome

users = User.create([email: 'conmakris99@gmail.com'])
