# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

welcome = User.where(email: 'conmakris9923@gmail.com', username: 'cm01428', first_name: 'Constantinos', last_name: 'Makris', age: '20', telephone: '0345435654').first
welcome.delete if welcome

users = User.create([email: 'conmakris992@gmail.com'])

welcome = Car.where(model: 'testMoel3412', engine: '1.4', seats:'5', transmission: 'auto', ac: 'yes', priceDay: '30', priceWeek: '150').first
welcome.delete if welcome

cars = Car.create(model: '12')
