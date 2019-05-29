class Task < ApplicationRecord
  belongs_to :user
  belongs_to :charge, class_name: 'User', foregin_key: 'charge_id'
  validates :title, presence: true
end
