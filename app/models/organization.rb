class Organization < ApplicationRecord
  validates :name, uniqueness: true, presence: true
end
