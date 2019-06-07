# frozen_string_literal: true

class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
  end

  def create
    coupon_code = params[:coupon][:coupon_code]
    store = params[:coupon][:store]
    Coupon.create(coupon_code: coupon_code, store: store)
    @coupon = Coupon.last
    redirect_to coupon_path(@coupon)
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def new; end
end
