class Course < ApplicationRecord
  extend FriendlyId
  friendly_id :url, use: :slugged
  validates :url, uniqueness: true
  validates_presence_of :name, :price, :description, :url
end