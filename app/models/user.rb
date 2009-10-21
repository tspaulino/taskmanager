class User < ActiveRecord::Base
  acts_as_authentic
  acts_as_authorization_subject
  
  validates_uniqueness_of :login
  validates_uniqueness_of :email
end

