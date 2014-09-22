class Attendances < ActiveRecord::Migration
  def change
    create_table :attendances, id: false do |t|
      t.belongs_to :attendee
      t.belongs_to :attended_event
    end
  end
end
