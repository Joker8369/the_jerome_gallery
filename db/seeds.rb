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
  admin: true,
  password: 'tototo',
  password_confirmation: 'tototo'
)

Table.create!(
  name: '1',
  description: 'lorem Ipsum',
  author: "#{admin.last_name} #{admin.first_name}",
  price: "33",
  user_id: "#{admin.id}"
)

Table.create!(
  name: '2',
  description: 'lorem Ipsum',
  author: "#{admin.last_name} #{admin.first_name}",
  price: "45",
  user_id: "#{admin.id}"
)
Table.create!(
  name: '3',
  description: 'lorem Ipsum',
  author: "#{admin.last_name} #{admin.first_name}",
  price: "48",
  user_id: "#{admin.id}"

)

puts 'Tables create'
