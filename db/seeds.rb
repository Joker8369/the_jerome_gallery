# Creation Database

Table.destroy_all
User.destroy_all
puts 'No Table Existing !'
puts 'no users'

admin = User.create!(
  first_name: 'CRANE',
  last_name: 'Jerome',
  address: 'Orliénas',
  phone: '0606060060',
  email: 'admin@gmail.com',
  story: "...",
  password: 'tototo',
  password_confirmation: 'tototo'
)

Table.create!(
  name: '1',
  description: 'lorem Ipsum',
  author: "Jerome CRANE",
  user_id: "#{admin.id}"
)

Table.create!(
  name: '2',
  description: 'lorem Ipsum',
  author: "Jerome CRANE",
  user_id: "#{admin.id}"
)
Table.create!(
  name: '3',
  description: 'lorem Ipsum',
  author: "Jerome CRANE",
  user_id: "#{admin.id}"

)

puts 'Tables create'
