class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

has_many :sites
has_many :datas
has_many :messages

with_options presence: true do
  validates :name
end

PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
validates_format_of :password, with: PASSWORD_REGEX, message: 'Include both letters and numbers'
end