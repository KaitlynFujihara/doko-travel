require 'csv'
City.destroy_all
Interest.destroy_all


Interest.create([
  { :interest_title => "Food"},
  { :interest_title => "Culture"},
  { :interest_title => "History"},
  { :interest_title => "Nature"},
  { :interest_title => "Entertainment"},
  { :interest_title => "Zoo/Aquariums"},
  { :interest_title => "Night Life"},
  { :interest_title => "Shopping"},
  { :interest_title => "Shrines/Temples"},
  { :interest_title => "Beaches"},
  { :interest_title => "Amusement Parks"},
  { :interest_title => "Snow Sports"},
  { :interest_title => "Deer"}
])
CSV.foreach('lib/seeds/JapanDestinations.csv', headers: true) do |row|
  City.create(row.to_h)
end


puts "There are now #{City.count} cities"

puts "There are now #{Interest.count} interests"
