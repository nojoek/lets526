class User < ActiveRecord::Base
  attr_accessible :email, :event_id, :name, :password, :password_confirmation

has_secure_password

validates :email, :uniqueness => { :case_sensitive => false }, presence: true

has_many :ballots
has_many :events
end
