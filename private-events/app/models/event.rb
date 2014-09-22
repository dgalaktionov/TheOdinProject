class Event < ActiveRecord::Base
  belongs_to :created_by, :class_name => "User"
  has_many :invites
  has_many :guests, :through => :invites
  
  def to_s
    id
  end
  
  def self.upcoming_events
    self.where("date > ?", DateTime.now)
  end
  
  def self.past_events
    self.where("date < ?", DateTime.now)
  end
  
  def self.permanent_events
    self.where("date is null")
  end
end
