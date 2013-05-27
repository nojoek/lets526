class Ballot < ActiveRecord::Base
  attr_accessible :event_id, :loc1, :loc2, :loc3, :loc4, :time1, :time2, :time3, :time4, :user_id

belongs_to :user
belongs_to :event

validates :user, presence: true


  validate :user_cannot_vote_more_than_three_times
  
  def user_cannot_vote_more_than_three_times
     if user.votes.count >= 3
       errors.add(:user_id, "has already voted three times")
     end
   end

end
