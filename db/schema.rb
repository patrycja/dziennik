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

ActiveRecord::Schema.define(:version => 20110606221950) do

  create_table "klasas", :force => true do |t|
    t.integer  "liczba_uczniow"
    t.string   "nazwa"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nauczyciels", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "imie"
    t.string   "nazwisko"
    t.string   "telefon"
  end

  add_index "nauczyciels", ["email"], :name => "index_nauczyciels_on_email", :unique => true
  add_index "nauczyciels", ["reset_password_token"], :name => "index_nauczyciels_on_reset_password_token", :unique => true

  create_table "ocenas", :force => true do |t|
    t.string   "rodzaj"
    t.string   "rok_szkolny"
    t.boolean  "archiwalna"
    t.integer  "przedmiot_id"
    t.integer  "nauczyciel_id"
    t.integer  "uczen_id"
    t.integer  "wartosc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "przedmiots", :force => true do |t|
    t.integer  "nauczyciel_id"
    t.string   "nazwa"
    t.string   "rok_szkolny"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "klasa"
  end

  create_table "rails_admin_histories", :force => true do |t|
    t.string   "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 5
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_histories_on_item_and_table_and_month_and_year"

  create_table "rodzic_uczens", :force => true do |t|
    t.integer  "uczen_id"
    t.integer  "rodzic_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rodzics", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "uczen_id"
    t.string   "imie"
    t.string   "nazwisko"
    t.string   "telefon"
  end

  add_index "rodzics", ["email"], :name => "index_rodzics_on_email", :unique => true
  add_index "rodzics", ["reset_password_token"], :name => "index_rodzics_on_reset_password_token", :unique => true

  create_table "uczen_klasas", :force => true do |t|
    t.integer  "uczen_id"
    t.integer  "klasa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "uczens", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "klasa_id"
    t.string   "imie"
    t.string   "nazwisko"
    t.string   "data_urodzenia"
    t.integer  "pesel"
    t.integer  "rodzic_id"
    t.string   "klasa"
  end

  add_index "uczens", ["email"], :name => "index_uczens_on_email", :unique => true
  add_index "uczens", ["reset_password_token"], :name => "index_uczens_on_reset_password_token", :unique => true

  create_table "uwagas", :force => true do |t|
    t.text     "tresc"
    t.integer  "nauczyciel_id"
    t.integer  "uczen_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
