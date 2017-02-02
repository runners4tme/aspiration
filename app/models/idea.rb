class Idea < ActiveRecord::Base
  validates_presence_of :author, :title, :content
  validates_length_of :author, within: 3..20
  acts_as_votable
  def idea_time
   created_at.strftime("%m/%d/%y at %l:%M %p")
  end
end
