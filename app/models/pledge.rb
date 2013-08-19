class Pledge < ActiveRecord::Base
  validates :name, :description, :amount, presence: true
  validates :amount, numericality: true
end
