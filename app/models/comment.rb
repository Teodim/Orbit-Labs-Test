class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :event
  has_many :reports

  validates :text, presence: true
  validates :user_id, presence: true
  validates :event_id, presence: true
end
