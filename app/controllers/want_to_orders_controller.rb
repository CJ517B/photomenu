class WantToOrdersController < ApplicationController
  def index
    @q = WantToOrder.ransack(params[:q])
    @want_to_orders = @q.result(:distinct => true).includes(:user, :menu_item).page(params[:page]).per(10)

    render("want_to_orders/index.html.erb")
  end

  def show
    @want_to_order = WantToOrder.find(params[:id])

    render("want_to_orders/show.html.erb")
  end

  def new
    @want_to_order = WantToOrder.new

    render("want_to_orders/new.html.erb")
  end

  def create
    @want_to_order = WantToOrder.new

    @want_to_order.user_id = params[:user_id]
    @want_to_order.menu_item_id = params[:menu_item_id]

    save_status = @want_to_order.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/want_to_orders/new", "/create_want_to_order"
        redirect_to("/want_to_orders")
      else
        redirect_back(:fallback_location => "/", :notice => "Want to order created successfully.")
      end
    else
      render("want_to_orders/new.html.erb")
    end
  end

  def edit
    @want_to_order = WantToOrder.find(params[:id])

    render("want_to_orders/edit.html.erb")
  end

  def update
    @want_to_order = WantToOrder.find(params[:id])

    @want_to_order.user_id = params[:user_id]
    @want_to_order.menu_item_id = params[:menu_item_id]

    save_status = @want_to_order.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/want_to_orders/#{@want_to_order.id}/edit", "/update_want_to_order"
        redirect_to("/want_to_orders/#{@want_to_order.id}", :notice => "Want to order updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Want to order updated successfully.")
      end
    else
      render("want_to_orders/edit.html.erb")
    end
  end

  def destroy
    @want_to_order = WantToOrder.find(params[:id])

    @want_to_order.destroy

    if URI(request.referer).path == "/want_to_orders/#{@want_to_order.id}"
      redirect_to("/", :notice => "Want to order deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Want to order deleted.")
    end
  end
end
