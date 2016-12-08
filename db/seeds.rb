
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'photomenu_menu.csv'))
menu = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
menu.each do |row|
  m = Menu.new
  m.restaurant_id = row['restaurant_id']
  m.menu_name = row['menu_name']
  m.save
  puts "#{m.menu_name} menu from #{m.restaurant_id} saved"
end

puts "#{Menu.count} rows in Menu table."


require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'photomenu_menu_item.csv'))
menu_item = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
menu_item.each do |row|
  m = MenuItem.new
  m.menu_id = row['menu_id']
  m.category_name =row['category'].capitalize
  m.price =  row['price']
  m.item_name = row['item_name'].capitalize
  m.description = row['description']
  m.save

end

puts "#{MenuItem.count} rows in Menu Item table."
