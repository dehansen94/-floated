class Floatdevice < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, presence: true
  validates :price, presence: true
  validates :category, presence: true
  validates :size, presence: true
  validates :description, presence: true
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_name_description_and_category,
    against: [ :name, :description, :category ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
