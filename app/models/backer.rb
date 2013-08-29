class Backer < ActiveRecord::Base
  has_one :pledge
  belongs_to :project

  validates :amount, :pledge_id, :project_id, :user_id, presence: true
  validates :amount, numericality: true
end
