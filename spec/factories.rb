Factory.define :user do |n|
  n.name "Developer"
  n.sequence(:login) { |n| "developer#{n}" }
  n.email { |u| "#{u.login}@domain.com" }
  n.password "secret"
  n.password_confirmation "secret"
end

Factory.define :project do |p|
  p.name "Test project"
  p.description "Test project made on factory for tests"
  p.owner { |o| o.association(:user) }
end
