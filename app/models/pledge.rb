class Pledge < ActiveRecord::Base

  has_many :backers
  validates :name, :description, :amount, :date, presence: true
  validates :amount, numericality: true

  validates_format_of :date, :with => /^201(3|4)-(\d\d)-(\d\d)/, :multiline => true, :messae => "date format error Example 20/Aug/2014"
  scope :actives, -> {where("date > :actual_date", actual_date: Time.now)}

end
