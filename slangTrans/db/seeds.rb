 # This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Slang.destroy_all
Definition.destroy_all
Book.destroy_all
SlangBook.destroy_all

u1 = User.create(name: "FanZhong", username: "fanz", password: "test")
u2 = User.create(name: "Gena", username: "saphirg", password: "password")

s1 = Slang.create(phrase: "Piece of cake", origin: "English", user: u1)
s2 = Slang.create(phrase: "lol", origin: "English", user: u2)

d1 = Definition.create(slang: s1, meaning: "Easy", language: "english")
d3 = Definition.create(slang: s1, meaning: "小菜一碟", language:"mandarin")
d4 = Definition.create(slang: s1, meaning: "Einfach", language: "german")
d2 = Definition.create(slang: s2, meaning: "Laugh out loud.", language:"english")

b1 = Book.create(title: "Dictionary", url: "https://www.google.com/")
b2 = Book.create(title: "Slang for dummies", url: "http://onlineslangdictionary.com/")

SlangBook.create(slang: s1, book: b1)
SlangBook.create(slang: s1, book: b2)