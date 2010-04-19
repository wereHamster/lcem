class CreateAthletes < ActiveRecord::Migration
  def self.up
    create_table :athletes do |t|
      t.string :name
      t.string :surname
      t.integer :age_group
      t.string :club
      t.string :street
      t.string :city
			t.integer :postal_code
      t.integer :sex
      t.string :license

			t.references :meeting

      t.timestamps
    end
  end

  def self.down
    drop_table :athletes
  end
end
