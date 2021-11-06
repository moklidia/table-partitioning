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

  create_table "partitioned_purchases_2021_1", id: :bigint, default: -> { "nextval('purchases_id_seq'::regclass)" }, force: :cascade do |t|
    t.date "date"
    t.float "amount"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "partitioned_purchases_2021_1_user_id"
    t.check_constraint "(date_trunc('day'::text, (date)::timestamp with time zone) >= '2021-01-01 00:00:00+00'::timestamp with time zone) AND (date_trunc('day'::text, (date)::timestamp with time zone) < '2021-02-01 00:00:00+00'::timestamp with time zone)", name: "partitioned_purchases_2021_1_date_check"
  end

  create_table "partitioned_purchases_2021_10", id: :bigint, default: -> { "nextval('purchases_id_seq'::regclass)" }, force: :cascade do |t|
    t.date "date"
    t.float "amount"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "partitioned_purchases_2021_10_user_id"
    t.check_constraint "(date_trunc('day'::text, (date)::timestamp with time zone) >= '2021-10-01 00:00:00+00'::timestamp with time zone) AND (date_trunc('day'::text, (date)::timestamp with time zone) < '2021-11-01 00:00:00+00'::timestamp with time zone)", name: "partitioned_purchases_2021_10_date_check"
  end

  create_table "partitioned_purchases_2021_11", id: :bigint, default: -> { "nextval('purchases_id_seq'::regclass)" }, force: :cascade do |t|
    t.date "date"
    t.float "amount"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "partitioned_purchases_2021_11_user_id"
    t.check_constraint "(date_trunc('day'::text, (date)::timestamp with time zone) >= '2021-11-01 00:00:00+00'::timestamp with time zone) AND (date_trunc('day'::text, (date)::timestamp with time zone) < '2021-12-01 00:00:00+00'::timestamp with time zone)", name: "partitioned_purchases_2021_11_date_check"
  end

  create_table "partitioned_purchases_2021_2", id: :bigint, default: -> { "nextval('purchases_id_seq'::regclass)" }, force: :cascade do |t|
    t.date "date"
    t.float "amount"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "partitioned_purchases_2021_2_user_id"
    t.check_constraint "(date_trunc('day'::text, (date)::timestamp with time zone) >= '2021-02-01 00:00:00+00'::timestamp with time zone) AND (date_trunc('day'::text, (date)::timestamp with time zone) < '2021-03-01 00:00:00+00'::timestamp with time zone)", name: "partitioned_purchases_2021_2_date_check"
  end

  create_table "partitioned_purchases_2021_3", id: :bigint, default: -> { "nextval('purchases_id_seq'::regclass)" }, force: :cascade do |t|
    t.date "date"
    t.float "amount"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "partitioned_purchases_2021_3_user_id"
    t.check_constraint "(date_trunc('day'::text, (date)::timestamp with time zone) >= '2021-03-01 00:00:00+00'::timestamp with time zone) AND (date_trunc('day'::text, (date)::timestamp with time zone) < '2021-04-01 00:00:00+00'::timestamp with time zone)", name: "partitioned_purchases_2021_3_date_check"
  end

  create_table "partitioned_purchases_2021_4", id: :bigint, default: -> { "nextval('purchases_id_seq'::regclass)" }, force: :cascade do |t|
    t.date "date"
    t.float "amount"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "partitioned_purchases_2021_4_user_id"
    t.check_constraint "(date_trunc('day'::text, (date)::timestamp with time zone) >= '2021-04-01 00:00:00+00'::timestamp with time zone) AND (date_trunc('day'::text, (date)::timestamp with time zone) < '2021-05-01 00:00:00+00'::timestamp with time zone)", name: "partitioned_purchases_2021_4_date_check"
  end

  create_table "partitioned_purchases_2021_5", id: :bigint, default: -> { "nextval('purchases_id_seq'::regclass)" }, force: :cascade do |t|
    t.date "date"
    t.float "amount"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "partitioned_purchases_2021_5_user_id"
    t.check_constraint "(date_trunc('day'::text, (date)::timestamp with time zone) >= '2021-05-01 00:00:00+00'::timestamp with time zone) AND (date_trunc('day'::text, (date)::timestamp with time zone) < '2021-06-01 00:00:00+00'::timestamp with time zone)", name: "partitioned_purchases_2021_5_date_check"
  end

  create_table "partitioned_purchases_2021_6", id: :bigint, default: -> { "nextval('purchases_id_seq'::regclass)" }, force: :cascade do |t|
    t.date "date"
    t.float "amount"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "partitioned_purchases_2021_6_user_id"
    t.check_constraint "(date_trunc('day'::text, (date)::timestamp with time zone) >= '2021-06-01 00:00:00+00'::timestamp with time zone) AND (date_trunc('day'::text, (date)::timestamp with time zone) < '2021-07-01 00:00:00+00'::timestamp with time zone)", name: "partitioned_purchases_2021_6_date_check"
  end

  create_table "partitioned_purchases_2021_7", id: :bigint, default: -> { "nextval('purchases_id_seq'::regclass)" }, force: :cascade do |t|
    t.date "date"
    t.float "amount"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "partitioned_purchases_2021_7_user_id"
    t.check_constraint "(date_trunc('day'::text, (date)::timestamp with time zone) >= '2021-07-01 00:00:00+00'::timestamp with time zone) AND (date_trunc('day'::text, (date)::timestamp with time zone) < '2021-08-01 00:00:00+00'::timestamp with time zone)", name: "partitioned_purchases_2021_7_date_check"
  end

  create_table "partitioned_purchases_2021_8", id: :bigint, default: -> { "nextval('purchases_id_seq'::regclass)" }, force: :cascade do |t|
    t.date "date"
    t.float "amount"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "partitioned_purchases_2021_8_user_id"
    t.check_constraint "(date_trunc('day'::text, (date)::timestamp with time zone) >= '2021-08-01 00:00:00+00'::timestamp with time zone) AND (date_trunc('day'::text, (date)::timestamp with time zone) < '2021-09-01 00:00:00+00'::timestamp with time zone)", name: "partitioned_purchases_2021_8_date_check"
  end

  create_table "partitioned_purchases_2021_9", id: :bigint, default: -> { "nextval('purchases_id_seq'::regclass)" }, force: :cascade do |t|
    t.date "date"
    t.float "amount"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "partitioned_purchases_2021_9_user_id"
    t.check_constraint "(date_trunc('day'::text, (date)::timestamp with time zone) >= '2021-09-01 00:00:00+00'::timestamp with time zone) AND (date_trunc('day'::text, (date)::timestamp with time zone) < '2021-10-01 00:00:00+00'::timestamp with time zone)", name: "partitioned_purchases_2021_9_date_check"
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
