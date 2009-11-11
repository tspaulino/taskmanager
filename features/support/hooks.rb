Before do
  include Authlogic::TestCase
  activate_authlogic
  Factory(:user, :login => "admin", :password => "secret")
end