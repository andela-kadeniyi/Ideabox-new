# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


category_list = [
  ['A','blue darken-3'],
  ['B','pink darken-3'],
  ['C','teal darken-3'],
  ['D','yellow darken-3'],
  ['E','blue-grey lighten-3'],
  ['F','green darken-3'],
  ['G',' red darken-3']
]

category_list.each do |name, color|
  Category.find_or_create_by(name: name, color: color)
end
