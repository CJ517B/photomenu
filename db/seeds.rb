
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'photomenu_menu.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  m = Menu.new
  m.restaurant_id = row['restaurant_id']
  m.menu_name = row['menu_name']
  m.save
  puts "#{m.menu_name} menu from #{m.restaurant_id} saved"
end

puts "#{Menu.count} rows in Menu table."
