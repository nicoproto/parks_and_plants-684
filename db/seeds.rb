puts 'Cleaning up database...'
Garden.destroy_all
puts 'Db destroyed'

other = Garden.create!(
  name: "My pretty graden",
  banner_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTt80GDdZZUp1k_gU7ufBw3XhSyOsqX48QiCA&usqp=CAU"
)

little = Garden.create!(
  name: "My ugly graden",
  banner_url: "https://images.thestar.com/AAM-u85C4oHpPcjrK00OngNUQxQ=/1280x1024/smart/filters:cb(1522877760005)/https://www.thestar.com/content/dam/thestar/life/homes/outdoor_living/2009/05/21/what_to_do_with_my_ugly_garden/my_uglygarden.jpeg"
)

Plant.create!(
  name: "Monstera",
  image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/monstera.jpg",
  garden: little
)

Plant.create!(
  name: "Philo",
  image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/philo.jpg",
  garden: little
)

Plant.create!(
  name: "Dieff",
  image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/dieffenbachia.jpg",
  garden: other
)


Tag.create!(name: "Indoor")
Tag.create!(name: "Outdoor")
Tag.create!(name: "Banana")
Tag.create!(name: "Mango")
Tag.create!(name: "Le Wagon")

puts "Total gardens: #{Garden.count}!"
puts "Total tags: #{Tag.count}!"