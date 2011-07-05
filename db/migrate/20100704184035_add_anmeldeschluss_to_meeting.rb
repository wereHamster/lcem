class AddAnmeldeschlussToMeeting < ActiveRecord::Migration
  def self.up
    add_column :meetings, :anmeldeschluss, :datetime
  end

  def self.down
    remove_column :meetings, :anmeldeschluss
  end
end
