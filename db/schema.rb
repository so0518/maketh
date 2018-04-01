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

ActiveRecord::Schema.define(version: 20180401015624) do

  create_table "draft_pictures", force: :cascade do |t|
    t.integer "draft_picture_id"
    t.string "draft_picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "draft_sample_relationships", force: :cascade do |t|
    t.integer "draft_id"
    t.integer "sample_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["draft_id", "sample_id"], name: "index_draft_sample_relationships_on_draft_id_and_sample_id", unique: true
    t.index ["draft_id"], name: "index_draft_sample_relationships_on_draft_id"
    t.index ["sample_id"], name: "index_draft_sample_relationships_on_sample_id"
  end

  create_table "drafts", force: :cascade do |t|
    t.integer "user_id"
    t.integer "draft_id"
    t.string "draft_name"
    t.integer "gender"
    t.integer "expected_price"
    t.string "explanation"
    t.integer "product_category"
    t.integer "bookmark_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relationship_drafts", force: :cascade do |t|
    t.integer "draft_id"
    t.integer "draft_picture_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["draft_id", "draft_picture_id"], name: "index_relationship_drafts_on_draft_id_and_draft_picture_id", unique: true
    t.index ["draft_id"], name: "index_relationship_drafts_on_draft_id"
    t.index ["draft_picture_id"], name: "index_relationship_drafts_on_draft_picture_id"
  end

  create_table "relationship_samples", force: :cascade do |t|
    t.integer "sample_id"
    t.integer "sample_picture_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sample_id", "sample_picture_id"], name: "index_relationship_samples_on_sample_id_and_sample_picture_id", unique: true
    t.index ["sample_id"], name: "index_relationship_samples_on_sample_id"
    t.index ["sample_picture_id"], name: "index_relationship_samples_on_sample_picture_id"
  end

  create_table "relationships", force: :cascade do |t|
    t.integer "followed_user_id"
    t.integer "follower_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["followed_user_id", "follower_id"], name: "index_relationships_on_followed_user_id_and_follower_id", unique: true
    t.index ["followed_user_id"], name: "index_relationships_on_followed_user_id"
    t.index ["follower_id"], name: "index_relationships_on_follower_id"
  end

  create_table "sample_pictures", force: :cascade do |t|
    t.integer "sample_picture_id"
    t.string "sample_picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "samples", force: :cascade do |t|
    t.integer "sample_id"
    t.string "sample_name"
    t.integer "gender"
    t.string "reference_price"
    t.string "explanation"
    t.integer "product_category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.integer "gender"
    t.integer "height"
    t.string "cellphone"
    t.string "email"
    t.integer "paymentmethod"
    t.integer "payeeaccount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
