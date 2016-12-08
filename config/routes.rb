Rails.application.routes.draw do
  # Routes for the Menu_category resource:
  # CREATE
  get "/menu_categories/new", :controller => "menu_categories", :action => "new"
  post "/create_menu_category", :controller => "menu_categories", :action => "create"

  # READ
  get "/menu_categories", :controller => "menu_categories", :action => "index"
  get "/menu_categories/:id", :controller => "menu_categories", :action => "show"

  # UPDATE
  get "/menu_categories/:id/edit", :controller => "menu_categories", :action => "edit"
  post "/update_menu_category/:id", :controller => "menu_categories", :action => "update"

  # DELETE
  get "/delete_menu_category/:id", :controller => "menu_categories", :action => "destroy"
  #------------------------------

  # Routes for the Category resource:
  # CREATE
  get "/categories/new", :controller => "categories", :action => "new"
  post "/create_category", :controller => "categories", :action => "create"

  # READ
  get "/categories", :controller => "categories", :action => "index"
  get "/categories/:id", :controller => "categories", :action => "show"

  # UPDATE
  get "/categories/:id/edit", :controller => "categories", :action => "edit"
  post "/update_category/:id", :controller => "categories", :action => "update"

  # DELETE
  get "/delete_category/:id", :controller => "categories", :action => "destroy"
  #------------------------------

  ActiveAdmin.routes(self)

  devise_for :users

  root :to => "restaurants#index"
  
  # Routes for the Bookmark resource:
  # CREATE
  get "/bookmarks/new", :controller => "bookmarks", :action => "new"
  post "/create_bookmark", :controller => "bookmarks", :action => "create"

  # READ
  get "/bookmarks", :controller => "bookmarks", :action => "index"
  get "/bookmarks/:id", :controller => "bookmarks", :action => "show"

  # UPDATE
  get "/bookmarks/:id/edit", :controller => "bookmarks", :action => "edit"
  post "/update_bookmark/:id", :controller => "bookmarks", :action => "update"

  # DELETE
  get "/delete_bookmark/:id", :controller => "bookmarks", :action => "destroy"
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
