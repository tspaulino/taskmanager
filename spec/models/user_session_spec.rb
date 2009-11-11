require File.dirname(__FILE__) + '/../spec_helper'

describe UserSession do
  it "should be valid" do
    UserSession.new.should be_valid
  end
end
