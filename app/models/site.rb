class Site < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  # has_one :site_datum
  belongs_to :user
  has_one_attached :image
  belongs_to :progress

  
  validates :image
  validates :progress_id, numericality: { other_than: 1 , message: "can't be blank"} 
  validates :construcion_date, presence: true
  validates :sitename, presence: true
  validates :home_address, presence: true
  validates :site_address, presence: true
  validates :site_phone, presence: true
  validates :remark
end
