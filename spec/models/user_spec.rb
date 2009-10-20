require 'spec_helper'

describe User do
  before(:each) do
    @valid_attributes = {
      :name => "Tiago Paulino",
      :email => "tspaulino@gmail.com",
      :login => 'tspaulino',
      :password => "chronos",
      :password_confirmation => "chronos"
    }
  end

  it "should create a new instance given valid attributes" do
    User.create!(@valid_attributes)
  end
end

