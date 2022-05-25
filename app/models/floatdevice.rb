class Floatdevice < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, presence: true
  validates :price, presence: true
  validates :category, presence: true
  validates :size, presence: true
  validates :description, presence: true
  has_one_attached :photo
end
