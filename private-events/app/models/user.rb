class User < ActiveRecord::Base
  has_many :created_events, :foreign_key => "created_by_id", :class_name => "Event"
  has_many :invites, :foreign_key => :guest_id
  has_many :invited_events, :through => :invites, :source => :event
  
  def to_s
    id
  end
  
  def upcoming_events
    self.invites.joins(:event).select("event_id, place, date, attends").where("date > ?", DateTime.now)
  end
  
  def past_events
    self.invites.joins(:event).select("event_id, place, date, attends").where("date < ?", DateTime.now)
  end
  
  def permanent_events
    self.invites.joins(:event).select("event_id, place, date, attends").where("date is null")
  end
end
