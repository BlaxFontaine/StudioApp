class Node < ApplicationRecord
  has_ancestry
  validates :name, uniqueness: true, presence: true
  belongs_to :organization
end
