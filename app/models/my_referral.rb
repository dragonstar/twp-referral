class MyReferral < ActiveRecord::Base
  belongs_to :user, :class_name => "User", :foreign_key => "referral_id"


end
