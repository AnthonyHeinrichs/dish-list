class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reviews
  has_many :favorite_restaurants, dependent: :destroy
  has_many :restaurants, through: :favorite_restaurants
  has_many :favorite_dishes, dependent: :destroy
  has_many :dishes, through: :favorite_dishes
end
