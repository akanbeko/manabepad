class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :site_datum
         has_many :rooms

         with_options presence: true do
         validates :name
         validates :user_phone, format: { with: /\A\d{10,11}\z/, message: 'is invalid' }
         validates :occupation

         
         end
  end