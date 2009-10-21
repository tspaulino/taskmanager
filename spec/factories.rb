Factory.define :user do |n|
  n.name "Developer"
  n.login "developer"
  n.email "developer@domain.com"
  n.password "secret"
  n.password_confirmation "secret"
end

Factory.define :project do |p|
  p.name "Test project"
  p.description "Test project made on factory for tests"
  p.users { |u| u.association(:user) }
end
