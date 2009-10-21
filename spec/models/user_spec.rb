require 'spec_helper'

describe User do

  it "should create a new instance given valid attributes" do
    Factory.create(:user)
  end
  
  it "should have many users with no repeated logins or emails" do
    10.times { Factory.create(:user) }
    user = User.first
    User.count("*", :conditions => ["email = ? or login = ?", user.email, user.login]).should == 1
  end
end

