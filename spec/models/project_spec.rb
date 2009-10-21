require 'spec_helper'

describe Project do
  before(:each) do
  @owner_attributes = {
      :name => "Tiago Paulino",
      :email => "tspaulino@gmail.com",
      :login => 'tspaulino',
      :password => "chronos",
      :password_confirmation => "chronos"
    }
    @valid_attributes = {
      :name => "Test Project",
      :description => "Meta project for task manager",
      :users_ids => 1
    }
    @developer_attributes = {
      :name => "Developer1",
      :email => "developer1@domain.com",
      :login => 'developer1',
      :password => "secret",
      :password_confirmation => "secret"
    }
  end

  it "should add the user that creates the project as your owner" do
    User.create!(@owner_attributes)
    Project.create!(@valid_attributes)
  end

end

