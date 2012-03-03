class User < ActiveRecord::Base

  belongs_to :referred_by_user, :class_name => "User", :foreign_key => "referred_by_user_id"
  has_many :referred_users, :class_name => "User", :foreign_key => "referred_users_id"
  has_one :my_referral_object, :class_name => "MyReferral"
  validates_uniqueness_of :referral_code

end
