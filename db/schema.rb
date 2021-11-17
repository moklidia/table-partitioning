# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_06_094942) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "partitioned_purchases", id: :bigint, default: -> { "nextval('purchases_id_seq'::regclass)" }, force: :cascade do |t|
    t.date "date"
    t.float "amount"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "partitioned_purchases_user_id_idx"
  end

  create_table "purchases", force: :cascade do |t|
    t.date "date"
    t.float "amount"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_purchases_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_view "purchases_view", sql_definition: <<-SQL
      SELECT partitioned_purchases.id,
      partitioned_purchases.date,
      partitioned_purchases.amount,
      partitioned_purchases.user_id,
      partitioned_purchases.created_at,
      partitioned_purchases.updated_at
     FROM partitioned_purchases;
  SQL
end
