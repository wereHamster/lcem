class AddJahrgangToMeeting < ActiveRecord::Migration
  def self.up
    add_column :meetings, :jahrgang, :string
  end

  def self.down
    remove_column :meetings, :jahrgang
  end
end
