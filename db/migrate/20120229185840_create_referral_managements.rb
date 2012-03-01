class CreateReferralManagements < ActiveRecord::Migration
  def change
    create_table :referral_managements do |t|
      t.string :name
      t.string :currency
      t.decimal :referred_by_amount, :precision => 8, :scale => 2
      t.decimal :referral_amount, :precision => 8, :scale => 2
      t.decimal :start_amount, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
