class MenuCategoriesController < ApplicationController
  def index
    @menu_categories = MenuCategory.all

    render("menu_categories/index.html.erb")
  end

  def show
    @menu_category = MenuCategory.find(params[:id])

    render("menu_categories/show.html.erb")
  end

  def new
    @menu_category = MenuCategory.new

    render("menu_categories/new.html.erb")
  end

  def create
    @menu_category = MenuCategory.new

    @menu_category.MenuId = params[:MenuId]
    @menu_category.CategoryId = params[:CategoryId]

    save_status = @menu_category.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/menu_categories/new", "/create_menu_category"
        redirect_to("/menu_categories")
      else
        redirect_back(:fallback_location => "/", :notice => "Menu category created successfully.")
      end
    else
      render("menu_categories/new.html.erb")
    end
  end

  def edit
    @menu_category = MenuCategory.find(params[:id])

    render("menu_categories/edit.html.erb")
  end

  def update
    @menu_category = MenuCategory.find(params[:id])

    @menu_category.MenuId = params[:MenuId]
    @menu_category.CategoryId = params[:CategoryId]

    save_status = @menu_category.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/menu_categories/#{@menu_category.id}/edit", "/update_menu_category"
        redirect_to("/menu_categories/#{@menu_category.id}", :notice => "Menu category updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Menu category updated successfully.")
      end
    else
      render("menu_categories/edit.html.erb")
    end
  end

  def destroy
    @menu_category = MenuCategory.find(params[:id])

    @menu_category.destroy

    if URI(request.referer).path == "/menu_categories/#{@menu_category.id}"
      redirect_to("/", :notice => "Menu category deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Menu category deleted.")
    end
  end
end
