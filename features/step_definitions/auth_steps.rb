def log_in(login="admin", password="secret")
  visit login_url
  fill_in "login", :with => login
  fill_in "password", :with => password
  click_button "login"
end

Given /^I am logged in$/ do
  log_in
end

Given /I am logged in as "([^\"]*)" with password "([^\"]*)"$/ do |login, password|
  log_in(login, password)
end