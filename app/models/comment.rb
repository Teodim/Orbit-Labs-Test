class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :event
  has_many :reports

  include Filterable

  validates :text, presence: true
  validates :user_id, presence: true
  validates :event_id, presence: true

  scope :filter_by_user_id, -> (user_id) { where user_id: user_id }
  scope :filter_by_event_id, -> (event_id) { where event_id: event_id }

  def self.filter_by_params(params)
    results = self.filter(params.slice(:user_id, :event_id))
    if params[:reports]
      results = results.joins('LEFT JOIN reports ON reports.comment_id = comments.id').where('reports.comment_id IS NULL')
    end
    results
  end
end
