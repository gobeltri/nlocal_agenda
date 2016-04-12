# t.integer  "user_id",                         null: false
# t.string   "first_name",          limit: 255, null: false
# t.string   "last_name",           limit: 255, null: false
# t.string   "email",               limit: 255, null: false
# t.text     "phone_numbers"
# t.string   "contact_type",        limit: 255
# t.datetime "created_at"
# t.datetime "updated_at"
# t.string   "avatar_file_name"
# t.string   "avatar_content_type"
# t.integer  "avatar_file_size"
# t.datetime "avatar_updated_at"

class Contact < ActiveRecord::Base

  belongs_to :user

  serialize :phone_numbers, Array
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
end
