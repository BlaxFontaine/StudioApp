class Node < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  belongs_to :organization
  has_ancestry
end
