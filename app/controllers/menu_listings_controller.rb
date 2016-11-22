class MenuListingsController < ApplicationController
  def index
    @menu_listings = MenuListing.page(params[:page]).per(10)

    render("menu_listings/index.html.erb")
  end

  def show
    @menu_listing = MenuListing.find(params[:id])

    render("menu_listings/show.html.erb")
  end

  def new
    @menu_listing = MenuListing.new

    render("menu_listings/new.html.erb")
  end

  def create
    @menu_listing = MenuListing.new

    @menu_listing.restaurant_id = params[:restaurant_id]
    @menu_listing.menu_id = params[:menu_id]

    save_status = @menu_listing.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/menu_listings/new", "/create_menu_listing"
        redirect_to("/menu_listings")
      else
        redirect_back(:fallback_location => "/", :notice => "Menu listing created successfully.")
      end
    else
      render("menu_listings/new.html.erb")
    end
  end

  def edit
    @menu_listing = MenuListing.find(params[:id])

    render("menu_listings/edit.html.erb")
  end

  def update
    @menu_listing = MenuListing.find(params[:id])

    @menu_listing.restaurant_id = params[:restaurant_id]
    @menu_listing.menu_id = params[:menu_id]

    save_status = @menu_listing.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/menu_listings/#{@menu_listing.id}/edit", "/update_menu_listing"
        redirect_to("/menu_listings/#{@menu_listing.id}", :notice => "Menu listing updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Menu listing updated successfully.")
      end
    else
      render("menu_listings/edit.html.erb")
    end
  end

  def destroy
    @menu_listing = MenuListing.find(params[:id])

    @menu_listing.destroy

    if URI(request.referer).path == "/menu_listings/#{@menu_listing.id}"
      redirect_to("/", :notice => "Menu listing deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Menu listing deleted.")
    end
  end
end
