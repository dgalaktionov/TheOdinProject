class FixInvites < ActiveRecord::Migration
  def change
    drop_table :attendances
    
    create_table :invites, id: false do |t|
      t.belongs_to :guest, index: true
      t.belongs_to :event, index: true
      t.boolean :attends, index: true
    end
  end
end
