require 'spec_helper'

describe Project do
  it "should add the user that creates the project as your owner" do
    project = Factory.create(:project)
    user = project.owner
    user.has_role?(:owner, project).should == true
  end
end

