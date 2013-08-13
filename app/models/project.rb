class Project < ActiveRecord::Base

  mount_uploader :picture, PictureUploader   
  belongs_to :category
  belongs_to :subcategory
  has_one :city
  has_many :comments
  has_many :pledges
  has_many :backers

  #before_validation(on: :create) do
    #self.video = video.gsub(/^(https?:\/\/)?(www\.)?youtube.com\/watch\?v=([a-z0-9-]+)/) if attribute_present?("video")
  #end

  validates :name, :description, :content, :goal, :video, :period, presence: true
  validates :goal, :period, numericality: true
  validates_format_of :video, :with => /^(\/\/)?(www\.)?youtube.com\/embed\/([a-z0-9-]+)/i, :multiline => true, :message => "Invalid format"                           
end

