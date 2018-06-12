class User < ApplicationRecord
  validates :username, presence: true, length: {minimum: 3 , maximum: 10}
  validates :email, presence: true
end