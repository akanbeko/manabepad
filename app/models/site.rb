class Site < ApplicationRecord
  # has_one :site_datum
  belongs_to :user

  validates :progress, presence: true
  validates :construcion_date, presence: true
  validates :sitename, presence: true
  validates :home_address, presence: true
  validates :site_address, presence: true
  validates :site_phone, presence: true
  validates :remark, presence: true
end
