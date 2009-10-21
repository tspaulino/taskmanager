class Project < ActiveRecord::Base
  # Virtual attribute to store the user owner
  attr_accessor :owner
  
  acts_as_authorization_object
  
  after_create :add_default_role_to_owner
  
  protected
  def add_default_role_to_owner
    owner.has_role! :owner, self
  end
end

