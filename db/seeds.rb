# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

count = 0


CSV.foreach(Rails.root.join('db', 'media_seeds.csv'), :headers => true) do |row|
  count += 1
  Work.create(:title => row['title'], :creator => row['creator'], :category => row['category'], :year => row['publication_year'], :description => row['description'])
  puts "row #{count} successfully added!"

end
