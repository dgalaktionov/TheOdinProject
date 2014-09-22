class AddDefaultValueToAssist < ActiveRecord::Migration
  def change
    change_column :invites, :attends, :boolean, :default => false
  end
end
