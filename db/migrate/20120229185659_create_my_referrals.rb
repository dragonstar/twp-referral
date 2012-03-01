class CreateMyReferrals < ActiveRecord::Migration
  def change
    create_table :my_referrals do |t|
      t.string :currency_referred_by_user
      t.string :currency_referred_user
      t.decimal :agreed_referred_by_amount, :precision => 8, :scale => 2
      t.integer :reservation_id
      t.decimal :agreed_referral_amount,:precision => 8, :scale => 2
      t.boolean :expired
      t.decimal :qualifying_transaction_amount, :precision => 8, :scale => 2
      t.date :transaction_date
      t.decimal :qualifying_transaction_commission,:precision => 8, :scale => 2


      t.timestamps
    end
  end
end
