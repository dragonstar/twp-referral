class AddUserIdToMyReferrals < ActiveRecord::Migration
  def change
    add_column :my_referrals, :user_id, :integer

  end
end
