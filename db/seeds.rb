# Creation Database

Table.destroy_all
puts 'No Table Existing !'
puts 'no users'

Table.create!(
  name: '1',
  description: 'lorem Ipsum',
  author: "Jerome CRANE",
)

Table.create!(
  name: '2',
  description: 'lorem Ipsum',
  author: "Jerome CRANE",

)
Table.create!(
  name: '3',
  description: 'lorem Ipsum',
  author: "Jerome CRANE",
)

puts 'Tables create'
