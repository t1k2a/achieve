class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :blogs, dependent: :destroy
         has_many :comments, dependent: :destroy
         
         has_many :relationships, foreign_key: "followed_id", dependent: :destroy
         has_many :reverse_relationships, foreign_key: "followed_id", class_name: "Relationship", dependent: :destroy
         
         has_many :followed_users, through: :relationships, source: :follower
         has_many :folllowers, through: :reverse_relationships, source: :follower
end
