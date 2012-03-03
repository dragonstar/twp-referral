# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120303173209) do

  create_table "my_referrals", :force => true do |t|
    t.string   "currency_referred_by_user"
    t.string   "currency_referred_user"
    t.decimal  "agreed_referred_by_amount",         :precision => 8, :scale => 2
    t.integer  "reservation_id"
    t.decimal  "agreed_referral_amount",            :precision => 8, :scale => 2
    t.boolean  "expired"
    t.decimal  "qualifying_transaction_amount",     :precision => 8, :scale => 2
    t.date     "transaction_date"
    t.decimal  "qualifying_transaction_commission", :precision => 8, :scale => 2
    t.datetime "created_at",                                                      :null => false
    t.datetime "updated_at",                                                      :null => false
    t.integer  "user_id"
  end

  create_table "referral_managements", :force => true do |t|
    t.string   "name"
    t.string   "currency"
    t.decimal  "referred_by_amount", :precision => 8, :scale => 2
    t.decimal  "referral_amount",    :precision => 8, :scale => 2
    t.decimal  "start_amount",       :precision => 8, :scale => 2
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "image_url"
    t.integer  "referred_by_user_id"
    t.integer  "referred_users_id"
    t.integer  "my_referral_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "referral_code"
    t.string   "referred_by_code"
  end

end
