class FarmsController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  before_action :set_farm, only: [:show, :edit, :update, :destroy]

  add_breadcrumb "Accueil", :root_path
  add_breadcrumb "Fermes à proximité", :farms_path


  # GET /farms
  # GET /farms.json
  def index    
    @farms = Farm.all
    render layout: 'minimal'
  end

  # GET /farms/1
  # GET /farms/1.json
  def show
    add_breadcrumb @farm, :farm_path
    @products = @farm.products
    @order = Order.where(user: current_user, farm: @farm, ready: [nil, false]).first_or_initialize

  end

  # GET /farms/new
  def new
    @farm = Farm.new
    add_breadcrumb "Créer une ferme", :new_farm_path
  end

  # GET /farms/1/edit
  def edit
    add_breadcrumb @farm, farm_path
    add_breadcrumb "Modifier ma ferme", :edit_farm_path
  end

  # POST /farms
  # POST /farms.json
  def create
    @farm = Farm.new(farm_params)
    @farm.user = current_user
    respond_to do |format|
      if @farm.save
        format.html { redirect_to @farm, notice: 'Farm was successfully created.' }
        format.json { render :show, status: :created, location: @farm }
      else
        format.html { render :new }
        format.json { render json: @farm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /farms/1
  # PATCH/PUT /farms/1.json
  def update
    respond_to do |format|
      if @farm.update(farm_params)
        format.html { redirect_to @farm, notice: 'Farm was successfully updated.' }
        format.json { render :show, status: :ok, location: @farm }
      else
        format.html { render :edit }
        format.json { render json: @farm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /farms/1
  # DELETE /farms/1.json
  def destroy
    @farm.destroy
    respond_to do |format|
      format.html { redirect_to farms_url, notice: 'Farm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_farm
      @farm = Farm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def farm_params
      params.require(:farm).permit(:user_id, :name, :address, :zipcode, :city, :hours, :payment, :phone, :email, :description)
    end
end
