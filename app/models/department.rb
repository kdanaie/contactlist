class Department < ApplicationRecord
  has_many :sections, dependent: :destroy
  validates :name, presence: true, length: { minimum: 3, maximum: 25 }
  validates_uniqueness_of :name
end
