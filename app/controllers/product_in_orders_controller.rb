class ProductInOrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_product_in_order, only: [:show, :edit, :update, :destroy]

  add_breadcrumb "Accueil", :root_path
  add_breadcrumb "Fermes à proximité", :farms_path

  # GET /product_in_orders
  # GET /product_in_orders.json
  def index
    @product_in_orders = ProductInOrder.all
  end

  # GET /product_in_orders/1
  # GET /product_in_orders/1.json
  def show
  end

  # GET /product_in_orders/new
  def new
    @product_in_order = ProductInOrder.new
  end

  # GET /product_in_orders/1/edit
  def edit
  end

  # POST /product_in_orders
  # POST /product_in_orders.json
  def create
    @product_in_order = ProductInOrder.new(product_in_order_params)

    respond_to do |format|
      if @product_in_order.save
        format.html { redirect_to @product_in_order, notice: 'Product in order was successfully created.' }
        format.json { render :show, status: :created, location: @product_in_order }
      else
        format.html { render :new }
        format.json { render json: @product_in_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_in_orders/1
  # PATCH/PUT /product_in_orders/1.json
  def update
    respond_to do |format|
      if @product_in_order.update(product_in_order_params)
        format.html { redirect_to @product_in_order, notice: 'Product in order was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_in_order }
      else
        format.html { render :edit }
        format.json { render json: @product_in_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_in_orders/1
  # DELETE /product_in_orders/1.json
  def destroy
    @product_in_order.destroy
    respond_to do |format|
      format.html { redirect_to product_in_orders_url, notice: 'Product in order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_in_order
      @product_in_order = ProductInOrder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_in_order_params
      params.require(:product_in_order).permit(:order_id, :product_id, :quantity)
    end
end
