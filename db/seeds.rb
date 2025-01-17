# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Admin
AdminUser.create!(email: 'admin@example.com', password: 'Password!', password_confirmation: 'Password!') if Rails.env.development?

# user
FactoryBot.create(
  :user
)

# products
rand(10..20).times do |_i|
  FactoryBot.create(
    :product
  )
end
