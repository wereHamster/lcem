class CreateMeetings < ActiveRecord::Migration
  def self.up
    create_table :meetings do |t|
      t.string :name, :ort, :gps, :banner
      t.datetime :datum
      t.text :info

      t.timestamps
    end
  end

  def self.down
    drop_table :meetings
  end
end
