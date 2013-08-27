require 'spec_helper.rb'

describe Project, 'associations' do
  it{ should belong_to :category}
  it{ should belong_to :subcategory}
  it{ should has_one :city}
  it{ should has_many :comments}
  it{ should has_many :pledges}
  it{ should has_many :backers}
end


#describe Project, 'validations' do
 #Project.create(name: "project", description: "A new project", content:"It is a new and pretty project", goal: 1111, video: "www.youtube.com/algo", period: 13 )

  #it { should validate_presence (:name)}
  #it { should validate_presence (:description)}
  #it { should validate_presence (:content)}
  #it { should validate_presence (:goal)}
  #it { should validate_presence (:video)}
  #it { should validate_presence (:period)}

  #it 'Should not be able to create an project with all require attributes' do
    #Project.create(name: "project", description: "A new project", content:"It is a new and pretty project", goal: 1111, video: "www.youtube.com/algo", period: 13 )
    #Project.count.should == 0
  #end
#end
#
 describe Project, 'Scope' do
   
 end
