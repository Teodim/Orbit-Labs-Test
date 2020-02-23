# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: 'Bruno Reis', email: 'bkreis03@gmail.com', password: '987654321')
User.create(name: 'John Mathew', email: 'john@gmail.com', password: '12345')

Event.create(name: 'Rock in Rio 2020', description: 'Show com várias bandas de rock', lat: '-22.9035', lng: '-43.2096')
Event.create(name: 'Lollapalooza 2020', description: 'Festival de música alternativa', lat: '-23.6125056', lng: '-46.670753')
Event.create(name: 'Olimpíadas 2020', description: 'Jogos Olímpicos no Japão', lat: '35.6894', lng: '139.692')
