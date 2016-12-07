class FoodPhotosController < ApplicationController
  def index
    @q = FoodPhoto.ransack(params[:q])
    @food_photos = @q.result(:distinct => true).includes(:user, :menu_item).page(params[:page]).per(10)

    render("food_photos/index.html.erb")
  end

  def show
    @food_photo = FoodPhoto.find(params[:id])

    render("food_photos/show.html.erb")
  end

  def new
    @food_photo = FoodPhoto.new

    render("food_photos/new.html.erb")
  end

  def create
    @food_photo = FoodPhoto.new

    @food_photo.user_id = params[:user_id]
    @food_photo.menu_item_id = params[:menu_item_id]
    @food_photo.item_review = params[:item_review]
    @food_photo.comment = params[:comment]
    @food_photo.photo = params[:photo]

    save_status = @food_photo.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/food_photos/new", "/create_food_photo"
        redirect_to("/food_photos")
      else
        redirect_back(:fallback_location => "/", :notice => "Food photo created successfully.")
      end
    else
      render("food_photos/new.html.erb")
    end
  end

  def edit
    @food_photo = FoodPhoto.find(params[:id])

    render("food_photos/edit.html.erb")
  end

  def update
    @food_photo = FoodPhoto.find(params[:id])

    @food_photo.user_id = params[:user_id]
    @food_photo.menu_item_id = params[:menu_item_id]
    @food_photo.item_review = params[:item_review]
    @food_photo.comment = params[:comment]

    save_status = @food_photo.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/food_photos/#{@food_photo.id}/edit", "/update_food_photo"
        redirect_to("/food_photos/#{@food_photo.id}", :notice => "Food photo updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Food photo updated successfully.")
      end
    else
      render("food_photos/edit.html.erb")
    end
  end

  def destroy
    @food_photo = FoodPhoto.find(params[:id])

    @food_photo.destroy

    if URI(request.referer).path == "/food_photos/#{@food_photo.id}"
      redirect_to("/", :notice => "Food photo deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Food photo deleted.")
    end
  end
end
