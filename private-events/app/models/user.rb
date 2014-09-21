class User < ActiveRecord::Base
  has_many :created_events, :foreign_key => "created_by_id", :class_name => "Event"
end
