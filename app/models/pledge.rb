class Pledge < ActiveRecord::Base

  has_many :backers
  validates :name, :description, :amount, :date, :stock, presence: true
  validates :amount, numericality: true

  validates_format_of :date, :with => /^201(3|4)-(\d\d)-(\d\d)/, :multiline => true, :messae => "date format error Example 20/Aug/2014"
  scope :actives, -> {where("date > :actual_date", actual_date: Time.now)}
  
  def self.create_pledge(pledge_id)
   pledge = Pledge.find(pledge_id)
   pledge.count = pledge.count + 1
   pledge.update(:count => pledge.count)
  end

end
