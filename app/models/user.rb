class User < ApplicationRecord:Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :blogs, dependent: :destroy
         
         has_many :comments, dependent: :destroy
end
