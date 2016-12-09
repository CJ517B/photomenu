
require 'csv'
#
# rest= File.read(Rails.root.join('lib', 'seeds', 'photomenu_restaurant.csv'))
# restaurant = CSV.parse(rest, :headers => true, :encoding => 'ISO-8859-1')
# restaurant.each do |row|
#   r = Restaurant.new
#   r.name = row['name']
#   r.address = row['address']
#   r.description = row['description']
#   r.save
# end
# puts "#{Restaurant.count} rows in Restaurant table."
#
# csv_text = File.read(Rails.root.join('lib', 'seeds', 'photomenu_menu.csv'))
# menu = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# menu.each do |row|
#   m = Menu.new
#   m.restaurant_id = row['restaurant_id']
#   m.menu_name = row['menu_name']
#   m.save
#   puts "#{m.menu_name} menu from #{m.restaurant_id} saved"
# end

# puts "#{Menu.count} rows in Menu table."
#
# category_seed = File.read(Rails.root.join('lib', 'seeds', 'photomenu_category.csv'))
# category = CSV.parse(category_seed, :headers => true, :encoding => 'ISO-8859-1')
# category.each do |row|
#   c = Category.new
#   c.name = row['name'].capitalize
#   c.save
# end
#
# puts "#{Category.count} rows added to Category."
#
# menu_categories = File.read(Rails.root.join('lib', 'seeds', 'photomenu_menu_category.csv'))
# menu_category = CSV.parse(menu_categories, :headers => true, :encoding => 'ISO-8859-1')
# menu_category.each do |row|
#   b = MenuCategory.new
#   b.MenuId = row['MenuId']
#   b.CategoryId= row['CategoryId']
#   b.save
# end
#
# puts "#{MenuCategory.count} rows added to MenuCategory."

menu_item_seed = File.read(Rails.root.join('lib', 'seeds', 'photomenu_menu_item.csv'))
menu_item = CSV.parse(menu_item_seed, :headers => true, :encoding => 'ISO-8859-1')
menu_item.each do |row|
  i = MenuItem.new
  i.menu_id = row['menu_id']
  # i.MenuCategoryId =row['menu_category_id']
  i.price =  row['price']
  i.item_name = row['item_name'].capitalize
  i.description = row['description']
  i.save

end

puts "#{MenuItem.count} rows in Menu Item table."
