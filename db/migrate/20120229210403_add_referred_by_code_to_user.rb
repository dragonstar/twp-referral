class AddReferredByCodeToUser < ActiveRecord::Migration
  def change
    add_column :users, :referred_by_code, :string

  end
end
