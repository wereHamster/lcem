class CreateAthletes < ActiveRecord::Migration
  def self.up
    create_table :athletes do |t|
      t.string :vorname, :nachname, :strasse, :gemeinde
			t.integer :jahrgang, :geschlecht
      t.string :verein, :lizenz

			t.references :meeting

      t.timestamps
    end
  end

  def self.down
    drop_table :athletes
  end
end
