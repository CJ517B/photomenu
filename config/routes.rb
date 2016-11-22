Rails.application.routes.draw do
  # Routes for the Menu resource:
  # CREATE
  get "/menus/new", :controller => "menus", :action => "new"
  post "/create_menu", :controller => "menus", :action => "create"

  # READ
  get "/menus", :controller => "menus", :action => "index"
  get "/menus/:id", :controller => "menus", :action => "show"

  # UPDATE
  get "/menus/:id/edit", :controller => "menus", :action => "edit"
  post "/update_menu/:id", :controller => "menus", :action => "update"

  # DELETE
  get "/delete_menu/:id", :controller => "menus", :action => "destroy"
  #------------------------------

  # Routes for the Food_photo resource:
  # CREATE
  get "/food_photos/new", :controller => "food_photos", :action => "new"
  post "/create_food_photo", :controller => "food_photos", :action => "create"

  # READ
  get "/food_photos", :controller => "food_photos", :action => "index"
  get "/food_photos/:id", :controller => "food_photos", :action => "show"

  # UPDATE
  get "/food_photos/:id/edit", :controller => "food_photos", :action => "edit"
  post "/update_food_photo/:id", :controller => "food_photos", :action => "update"

  # DELETE
  get "/delete_food_photo/:id", :controller => "food_photos", :action => "destroy"
  #------------------------------

  # Routes for the Menu_listing resource:
  # CREATE
  get "/menu_listings/new", :controller => "menu_listings", :action => "new"
  post "/create_menu_listing", :controller => "menu_listings", :action => "create"

  # READ
  get "/menu_listings", :controller => "menu_listings", :action => "index"
  get "/menu_listings/:id", :controller => "menu_listings", :action => "show"

  # UPDATE
  get "/menu_listings/:id/edit", :controller => "menu_listings", :action => "edit"
  post "/update_menu_listing/:id", :controller => "menu_listings", :action => "update"

  # DELETE
  get "/delete_menu_listing/:id", :controller => "menu_listings", :action => "destroy"
  #------------------------------

  # Routes for the Restaurant resource:
  # CREATE
  get "/restaurants/new", :controller => "restaurants", :action => "new"
  post "/create_restaurant", :controller => "restaurants", :action => "create"

  # READ
  get "/restaurants", :controller => "restaurants", :action => "index"
  get "/restaurants/:id", :controller => "restaurants", :action => "show"

  # UPDATE
  get "/restaurants/:id/edit", :controller => "restaurants", :action => "edit"
  post "/update_restaurant/:id", :controller => "restaurants", :action => "update"

  # DELETE
  get "/delete_restaurant/:id", :controller => "restaurants", :action => "destroy"
  #------------------------------

  # Routes for the Menu_item resource:
  # CREATE
  get "/menu_items/new", :controller => "menu_items", :action => "new"
  post "/create_menu_item", :controller => "menu_items", :action => "create"

  # READ
  get "/menu_items", :controller => "menu_items", :action => "index"
  get "/menu_items/:id", :controller => "menu_items", :action => "show"

  # UPDATE
  get "/menu_items/:id/edit", :controller => "menu_items", :action => "edit"
  post "/update_menu_item/:id", :controller => "menu_items", :action => "update"

  # DELETE
  get "/delete_menu_item/:id", :controller => "menu_items", :action => "destroy"
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get "/users/new", :controller => "users", :action => "new"
  post "/create_user", :controller => "users", :action => "create"

  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"

  # UPDATE
  get "/users/:id/edit", :controller => "users", :action => "edit"
  post "/update_user/:id", :controller => "users", :action => "update"

  # DELETE
  get "/delete_user/:id", :controller => "users", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
