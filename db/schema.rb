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

ActiveRecord::Schema.define(version: 20170106085332) do

  create_table "employees", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "emp_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "designation"
    t.string   "cell_no"
    t.string   "pan_no"
    t.string   "UAN_no"
    t.string   "PF_Acc_no"
    t.string   "Bank_Name"
    t.string   "Bank_account"
    t.datetime "created_at",                                            null: false
    t.datetime "updated_at",                                            null: false
    t.string   "email",                                 default: "",    null: false
    t.string   "encrypted_password",                    default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.decimal  "Gross_CTC",              precision: 10
    t.date     "Dateofjoining"
    t.boolean  "is_admin",                              default: false
    t.string   "salutation"
    t.index ["email"], name: "index_employees_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_employees_on_reset_password_token", unique: true, using: :btree
  end

  create_table "payslips", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "emp_id"
    t.string   "gross_CTC"
    t.string   "basic"
    t.string   "HRA"
    t.string   "medical"
    t.string   "conveyance"
    t.string   "PF"
    t.string   "special_allowance"
    t.string   "arrears"
    t.string   "Prof_Tax"
    t.string   "Total_PF_deductions"
    t.string   "Income_Tax"
    t.string   "vac_sick_overdue"
    t.string   "total_earnings"
    t.string   "total_deductions"
    t.string   "net_pay"
    t.string   "vacation"
    t.string   "sick"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "employee_id"
    t.integer  "Days_Paid"
  end

end
