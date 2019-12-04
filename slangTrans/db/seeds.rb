

puts "Destroying former seeds"


User.destroy_all
Slang.destroy_all
Definition.destroy_all
Book.destroy_all
SlangBook.destroy_all

puts "Making new ones!"
########user#########
u1 = User.create(name: "FanZhong", username: "fanz", password: "test")
u2 = User.create(name: "Gena", username: "saphirg", password: "password")

######slang#######
s1 = Slang.create(phrase: "Piece of cake", origin: "English", user: u1)
s2 = Slang.create(phrase: "Lol", origin: "English", user: u2)
s3 = Slang.create(phrase: "The Apple Doesn't Fall Far From The Tree", origin: "English", user: u1)
s4 = Slang.create(phrase: "Time will tell.", origin: "English", user: u2)
s5 = Slang.create(phrase: "Thank God!", origin: "English" , user: u1)
s6 = Slang.create(phrase: "Dienst ist Dienst und Schnaps ist Schnaps", origin: "German", user: u2)

####definition#####
#######piece of cake######
d1 = Definition.create(slang: s1, meaning: "Easy", language: "english")
d2 = Definition.create(slang: s1, meaning: "小菜一碟", language: "mandarin")
d3 = Definition.create(slang: s1, meaning: "Etwas mit links schaffen", language: "german")
####### lol#######
d4 = Definition.create(slang: s2, meaning: "Laugh out loud.", language: "english")
d5 = Definition.create(slang: s2, meaning: "哈哈大笑", language: "mandarin")
d6 = Definition.create(slang: s2, meaning: "Laut auflachen", language: "german")
#########apple#######
d7 = Definition.create(slang: s3, meaning: "children who show qualities or talents that are similar to those of their parents", language: "english")
d8 = Definition.create(slang: s3, meaning: "有其父必有其子", language: "mandarin")
d9 = Definition.create(slang: s3, meaning: "Der Apfel fällt nicht weit vom Stamm.", language: "german")
#########time will tell######
d7 = Definition.create(slang: s4, meaning: "We cross that bridge when we come to it.", language: "english")
d8 = Definition.create(slang: s4, meaning: "船到桥头自然直", language: "mandarin")
d9 = Definition.create(slang: s4, meaning: "Kommt Zeit, kommt Rat.", language: "german")
######thank god#######
d10 = Definition.create(slang: s5, meaning: "An expression of relief.", language: "english")
d11 = Definition.create(slang: s5, meaning: "感谢上帝", language: "mandarin")
d12 = Definition.create(slang: s5, meaning: "Gott sei Dank!", language: "german")
########dients ist#####
d13 = Definition.create(slang: s6, meaning: "You can’t mix business with pleasure.", language: "english")
d14 = Definition.create(slang: s6, meaning: "公事公办，私事私了", language: "mandarin")
d15 = Definition.create(slang: s6, meaning: "Berufsleben und Freizeit sollte man strikt trennen.", language: "german")


########book#########
b1 = Book.create(title: "Dictionary", url: "https://www.google.com/")
b2 = Book.create(title: "Slang for dummies", url: "http://onlineslangdictionary.com/")

#######jointable#######
SlangBook.create(slang: s1, book: b1)
SlangBook.create(slang: s1, book: b2)

puts "Done!"



