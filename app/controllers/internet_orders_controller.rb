class InternetOrdersController < ApplicationController
  before_action :set_internet_order, only: [:show, :edit, :update, :destroy]

  # GET /internet_orders
  # GET /internet_orders.json
  def index
    @internet_orders  =  InternetOrder.order("created_at desc").page(params[:page]).per(params[:limit])
    @internet_orders.where!('name like ?', "%#{params[:name]}%") if params[:name].present?
    @internet_orders.where!('phone_number like ?', "%#{params[:phone_number]}%") if params[:phone_number].present?
    #@internet_orders.where!(name: params[:name]) if params[:name].present?
    #@internet_orders.where!(phone_number: params[:phone_number]) if params[:phone_number].present?
  end

  # GET /internet_orders/1
  # GET /internet_orders/1.json
  def show
  end

  # GET /internet_orders/new
  def new
    @internet_order = InternetOrder.new
  end

  # GET /internet_orders/1/edit
  def edit
  end

  # POST /internet_orders
  # POST /internet_orders.json
  def create
    @internet_order = InternetOrder.new(internet_order_params)

    respond_to do |format|
      if @internet_order.save
        format.html { redirect_to internet_orders_url, notice: 'Internet order was successfully created.' }
        format.json { render :index, status: :created, location: @internet_order }
      else
        format.html { render :new }
        format.json { render json: @internet_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /internet_orders/1
  # PATCH/PUT /internet_orders/1.json
  def update
    respond_to do |format|
      if @internet_order.update(internet_order_params)
        format.html { redirect_to internet_orders_url, notice: 'Internet order was successfully updated.' }
        format.json { render :show, status: :ok, location: @internet_order }
      else
        format.html { render :edit }
        format.json { render json: @internet_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /internet_orders/1
  # DELETE /internet_orders/1.json
  def destroy
    @internet_order.destroy
    respond_to do |format|
      format.html { redirect_to internet_orders_url, notice: 'Internet order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_internet_order
      @internet_order = InternetOrder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def internet_order_params
      params.require(:internet_order).permit(:sn, :apply_date, :name, :fb_id, :phone_number, :postal_code, :dob, :house_type, :kouji_date, :plan, :link, :conclusion)
    end
end
