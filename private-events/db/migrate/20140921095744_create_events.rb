class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :date, index: true
      t.string :place, index: true
      t.references :created_by, index: true

      t.timestamps
    end
  end
end
