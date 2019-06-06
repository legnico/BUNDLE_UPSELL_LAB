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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_06_05_155741) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "graphic_settings", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "add_to_cart_button_color"
    t.string "add_to_cart_button_text_color"
    t.string "no_thanks_text_color"
    t.string "product_title_text_color"
    t.string "regular_price_text_color"
    t.string "sale_price_text_color"
    t.string "upsell_popup_font_family"
    t.string "add_to_cart_button_font_family"
  end

  create_table "product_associations", force: :cascade do |t|
    t.string "primary_product_id"
    t.string "associated_product_id"
    t.boolean "published", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shops", force: :cascade do |t|
    t.string "shopify_domain", null: false
    t.string "shopify_token", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shopify_domain"], name: "index_shops_on_shopify_domain", unique: true
  end

end
