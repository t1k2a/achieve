class Blog < ActiveRecord::Base
    validates :title, presence: true
     belongs_to :user
  # CommentモデルのAssociationを設定
  has_many :comments, dependent: :destroy
end
