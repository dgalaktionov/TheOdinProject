class User < ActiveRecord::Base
  has_many :created_events, :foreign_key => "created_by_id", :class_name => "Event"
  has_many :invites, :foreign_key => :guest_id
  has_many :invited_events, :through => :invites, :source => :event
  
  def to_s
    id
  end
end
