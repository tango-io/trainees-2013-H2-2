class Page < ActiveRecord::Base
  #extend FriendlyId
  #friendly_id :name, use: :slugged
  validates :title, presence: true
  validates :content, presence: true
end
