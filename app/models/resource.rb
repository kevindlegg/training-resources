class Resource < ApplicationRecord
  validates :title, :resource_type, :vendor, presence: true
  validates :title, length: { minimum: 5 }
end
