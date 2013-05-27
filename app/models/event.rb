class Event < ActiveRecord::Base
  attr_accessible :description, :finalloc, :finaltime, :settimeorloc, :title, :user_id

has_many :users
has_many :ballots
end
