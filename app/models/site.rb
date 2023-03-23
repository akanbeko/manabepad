class Site < ApplicationRecord
  has_many :site_datum
  belongs_to :user
end
