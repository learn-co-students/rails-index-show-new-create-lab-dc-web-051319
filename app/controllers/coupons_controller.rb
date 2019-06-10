class CouponsController < ApplicationController

    #show all the coupons
    def index
        @coupons = Coupon.all
    end

    #show a coupon
    def show
        @id = params['id']
        @coupon = Coupon.find(@id)
    end

    #create a new coupon
    def create
        @coupon = Coupon.new

        @coupon[:coupon_code] = params['coupon_code']
        @coupon[:store] = params[:coupon][:store]

       @coupon.save

        redirect_to coupon_path(@coupon)
    end
    

end
