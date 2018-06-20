# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20111013053403) do

  create_table "authors", :force => true do |t|
    t.integer  "tenant_id"
    t.integer  "user_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "authors", ["tenant_id"], :name => "index_authors_on_tenant_id"
  add_index "authors", ["user_id"], :name => "index_authors_on_user_id"

  create_table "calendars", :force => true do |t|
    t.integer  "tenant_id"
    t.integer  "team_id"
    t.datetime "cal_start"
    t.datetime "cal_end"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "calendars", ["team_id"], :name => "index_calendars_on_team_id"
  add_index "calendars", ["tenant_id"], :name => "index_calendars_on_tenant_id"

  create_table "posts", :force => true do |t|
    t.integer  "tenant_id"
    t.integer  "author_id"
    t.integer  "zine_id"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "posts", ["author_id"], :name => "index_posts_on_author_id"
  add_index "posts", ["tenant_id"], :name => "index_posts_on_tenant_id"
  add_index "posts", ["zine_id"], :name => "index_posts_on_zine_id"

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "team_assets", :force => true do |t|
    t.integer  "tenant_id"
    t.integer  "author_id"
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "team_assets", ["author_id"], :name => "index_team_assets_on_author_id"
  add_index "team_assets", ["team_id"], :name => "index_team_assets_on_team_id"
  add_index "team_assets", ["tenant_id"], :name => "index_team_assets_on_tenant_id"

  create_table "teams", :force => true do |t|
    t.integer  "tenant_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "teams", ["tenant_id"], :name => "index_teams_on_tenant_id"

  create_table "tenants", :force => true do |t|
    t.integer  "tenant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tenants_users", :id => false, :force => true do |t|
    t.integer "tenant_id"
    t.integer "user_id"
  end

  add_index "tenants_users", ["tenant_id"], :name => "index_tenants_users_on_tenant_id"
  add_index "tenants_users", ["user_id"], :name => "index_tenants_users_on_user_id"

  create_table "users", :force => true do |t|
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "authentication_token"
    t.integer  "tenant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["authentication_token"], :name => "index_users_on_authentication_token", :unique => true
  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "zines", :force => true do |t|
    t.integer  "tenant_id"
    t.integer  "calendar_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "zines", ["calendar_id"], :name => "index_zines_on_calendar_id"
  add_index "zines", ["tenant_id"], :name => "index_zines_on_tenant_id"

end
