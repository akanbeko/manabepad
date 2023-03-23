class SiteDatum < ApplicationRecord
  belongs_to :user
  belongs_to :site
  # has_one :data
end
