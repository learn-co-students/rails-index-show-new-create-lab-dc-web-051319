# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

target_coupon = Coupon.create(coupon_code: "20% Off", store: "Target")
mcd_coupon = Coupon.create(coupon_code: "Free Sandwich", store: "Mcdonalds")
zara_coupon = Coupon.create(coupon_code: "50% Off", store: "Zara")
