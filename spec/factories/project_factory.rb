Factory.define :project do |p|
  p.name "Test project"
  p.description "Test project made on factory for tests"
  p.users { |u| u.association(:user) }
end

