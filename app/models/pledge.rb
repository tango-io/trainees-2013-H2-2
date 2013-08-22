class Pledge < ActiveRecord::Base
  validates :name, :description, :amount, presence: true
  validates :amount, numericality: true
  validates_format_of :date, :with => /^(\d\d)\/(\d\d)\/201(3|4)/, :multiline => true, :messae => "date format error Example 20/Aug/2014"
end
