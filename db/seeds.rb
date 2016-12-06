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
    {name:'природа1','dragonfly-1729157_640.jpg', theme1:1},
    {name:'природа2','grass-1331703_640.jpg', theme1:1}
             ])