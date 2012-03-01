class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :address
      t.string :image_url
      t.integer :referred_by_user_id
      t.integer :referred_users_id
      t.integer :referral_id

      t.timestamps
    end
  end
end
