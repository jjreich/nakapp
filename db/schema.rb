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

ActiveRecord::Schema.define(version: 20201003035422) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "airborneflightcheckins", force: :cascade do |t|
    t.string "airborneflightcheckins"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "airborneflightdelays", force: :cascade do |t|
    t.string "airborneFlightDelays"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "aircrafts", force: :cascade do |t|
    t.string "tailNumber"
    t.string "aircraftType"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "airfields", force: :cascade do |t|
    t.string "icao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "arrivaltypes", force: :cascade do |t|
    t.string "arrivalTypes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "debrief_id"
    t.string "ancestry"
    t.index ["ancestry"], name: "index_comments_on_ancestry"
    t.index ["debrief_id"], name: "index_comments_on_debrief_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "debriefs", force: :cascade do |t|
    t.string "flightNumber"
    t.integer "preparation_rating"
    t.text "preparationComments"
    t.boolean "cateringStatus"
    t.integer "catering_rating"
    t.text "cateringComments"
    t.integer "clientArrivalTiming"
    t.string "clientArrivalType"
    t.text "clientArrivalComments"
    t.string "flightTurbulence"
    t.string "airborneFlightDelays"
    t.string "airborneFlightCheckins"
    t.text "flightComments"
    t.string "clientDepartureType"
    t.text "clientDepartureComments"
    t.text "overallComments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "flight_id"
    t.integer "client_arrival_rating"
    t.integer "airborne_rating"
    t.integer "client_departure_rating"
    t.integer "maintenance_rating"
    t.boolean "maintenance_check"
    t.text "maintenance_comments"
    t.boolean "finish_later"
    t.index ["flight_id"], name: "index_debriefs_on_flight_id"
    t.index ["user_id"], name: "index_debriefs_on_user_id"
  end

  create_table "departuretypes", force: :cascade do |t|
    t.string "departureTypes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fboratings", force: :cascade do |t|
    t.string "ratingType"
    t.integer "fboStarRating"
    t.text "fboComments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "fbo_id"
    t.index ["fbo_id"], name: "index_fboratings_on_fbo_id"
  end

  create_table "fbos", force: :cascade do |t|
    t.string "fboName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "airfield_id"
    t.index ["airfield_id"], name: "index_fbos_on_airfield_id"
  end

  create_table "flight_turbulences", force: :cascade do |t|
    t.string "turbulenceType"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flights", force: :cascade do |t|
    t.string "flightNumber"
    t.string "departureAirfield"
    t.string "arrivalAirfield"
    t.string "client"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "dateOfFlight"
    t.boolean "revenue_test"
    t.string "pic"
    t.string "sic"
    t.string "aircraft"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.bigint "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

  create_table "searches", force: :cascade do |t|
    t.integer "searchType"
    t.string "fullTextSearch"
    t.string "flightNumber"
    t.integer "pic"
    t.integer "sic"
    t.string "airfield"
    t.boolean "revenue"
    t.string "memberName"
    t.date "dateStart"
    t.date "dateEnd"
    t.integer "prepMin"
    t.integer "prepMax"
    t.integer "caterMin"
    t.integer "caterMax"
    t.integer "depMin"
    t.integer "depMax"
    t.integer "flightMin"
    t.integer "flightMax"
    t.integer "arrMin"
    t.integer "arrMax"
    t.integer "maintMin"
    t.integer "maintMax"
    t.boolean "catering"
    t.boolean "maint"
    t.integer "createdBy"
    t.boolean "hasComments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "save_search"
    t.string "save_search_name"
    t.integer "overallmin"
    t.integer "overallmax"
    t.integer "user_id"
    t.index ["user_id"], name: "index_searches_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "firstName"
    t.string "lastName"
    t.boolean "pilot_role"
    t.boolean "ops_role"
    t.boolean "maint_role"
    t.boolean "team_blue_role"
    t.boolean "flight_support_role"
    t.boolean "admin_role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

  create_table "viewed_comments", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "comment_id"
    t.index ["comment_id"], name: "index_viewed_comments_on_comment_id"
    t.index ["user_id"], name: "index_viewed_comments_on_user_id"
  end

  create_table "viewed_debriefs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "debrief_id"
    t.index ["debrief_id"], name: "index_viewed_debriefs_on_debrief_id"
    t.index ["user_id"], name: "index_viewed_debriefs_on_user_id"
  end

end
