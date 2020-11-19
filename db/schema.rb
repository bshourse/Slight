# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_19_122633) do

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.integer "publisher_id"
    t.index ["publisher_id"], name: "index_books_on_publisher_id"
  end

  create_table "publishers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sellings", force: :cascade do |t|
    t.integer "book_id"
    t.integer "shop_id"
    t.integer "publisher_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "copies"
    t.integer "selled_copies"
    t.integer "copies_in_stock"
    t.index ["book_id"], name: "index_sellings_on_book_id"
    t.index ["publisher_id"], name: "index_sellings_on_publisher_id"
    t.index ["shop_id"], name: "index_sellings_on_shop_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string "name"
    t.integer "books_sold_count"
    t.integer "publisher_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["publisher_id"], name: "index_shops_on_publisher_id"
  end

end
