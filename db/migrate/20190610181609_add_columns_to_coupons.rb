class AddColumnsToCoupons < ActiveRecord::Migration[5.0]
  def change
    add_column :coupons, :store, :string
    add_column :coupons, :coupon_code, :string
  end
end
