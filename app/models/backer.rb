class Backer < ActiveRecord::Base
  has_one :pledge
  belongs_to :project
end
