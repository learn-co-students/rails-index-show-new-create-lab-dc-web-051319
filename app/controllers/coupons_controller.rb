class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  #Display the new form
  def new

  end

  def create
    @coupon = Coupon.new
    @coupon.coupon_code = params["coupon"]["coupon_code"]
    @coupon.store = params["coupon"]["store"]
    @coupon.save
    redirect_to coupon_path(@coupon.id)

  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  #Display the edit form
  def edit

  end

  #Takes value from edit form and updates the object
  def update
    @coupon = Coupon.upate(params[:id])
  end

  def destroy
  end

end
