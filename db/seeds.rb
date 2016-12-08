# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Image.delete.all
Image.raset_pk_sequence
Image.create([
    {name:'природа1',file: 'dragonfly-1729157_640.jpg', theme1_id:1},
    {name:'природа2',file: 'grass-1331703_640.jpg', theme1_id:2},
    {name:'природа3',file: 'painted-lady-1568926_640.jpg', theme1_id:3},
             ])

Theme1.delete.all
Theme1.raset_pk_sequence
Theme1.create([
                  {name: "-----"},      # 1 Нет темы
                 {name:"Опишите1"},#2
                  {name:"Опишите2"},#3
                  {name:"Опишите3"},#4
             ])