class Course < ApplicationRecord
  extend FriendlyId
  friendly_id :url, use: :slugged
  validates :url, uniqueness: true
  validates_presence_of :name, :price, :description, :url
  belongs_to :user, optional: true
  belongs_to :admin, optional: true
end