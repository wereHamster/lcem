class CreateMeetings < ActiveRecord::Migration
  def self.up
    create_table :meetings do |t|
      t.string :name
      t.datetime :date

      t.timestamps
    end
  end

  def self.down
    drop_table :meetings
  end
end
