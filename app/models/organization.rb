class Organization < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  has_many :nodes, dependent: :destroy
end
