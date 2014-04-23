class Account < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true, email_format: { message: "not a valid email address" }
end
