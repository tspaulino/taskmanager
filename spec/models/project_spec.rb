require 'spec_helper'

describe Project do

  it "should add the user that creates the project as your owner" do
    Factory.create(:project)
  end

end

