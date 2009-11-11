Given /^I am logged in$/ do
  login = "admin"
  password = "secret"
  UserSession.new(:login => login, :password => password)
end

Given /I am logged in as "([^\"]*)" with password "([^\"]*)"$/ do |login, password|
  UserSession.new(:login => login, :password => password)
end