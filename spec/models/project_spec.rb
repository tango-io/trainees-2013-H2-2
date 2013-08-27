require 'spec_helper'

describe Project do 
 it{ should belong_to(:category) }
 it{ should belong_to(:subcategory)}
 it{ should have_one(:city)}
 it{ should have_many(:comments)}
end
describe Project,'Scopes' do
  context "by_id" do
      Project.create(:project)
  end
end
