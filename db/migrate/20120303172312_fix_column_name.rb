class FixColumnName < ActiveRecord::Migration
  def up
    rename_column :users, :referral_id, :my_referral_id
  end

  def down
  end
end
