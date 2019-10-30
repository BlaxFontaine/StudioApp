class Node < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  belongs_to :organization
end
