# t.integer  "user_id",       null: false
# t.string   "first_name",    null: false
# t.string   "last_name",     null: false
# t.string   "email",         null: false
# t.string   "avatar_url"
# t.text     "phone_numbers"
# t.string   "contact_type"
# t.datetime "created_at"
# t.datetime "updated_at"

class Contact < ActiveRecord::Base

  belongs_to :user

  serialize :phone_numbers, Array
end
