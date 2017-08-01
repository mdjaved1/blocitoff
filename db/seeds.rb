include Faker

User.destroy_all
Item.destroy_all

#Create Users

  5.times do
    user = User.create!(
  
    email:        Faker::Internet.email,
    password:     Faker::Internet.password,
   
    )
  end
  users = User.all
  10.times do 
      item = Item.create!(
          name: Faker::Address.city
          
          )
  end


puts "Seed finished"
puts "#{User.count} users created."
puts "#{Item.count} items created."

