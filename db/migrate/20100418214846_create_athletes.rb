class CreateAthletes < ActiveRecord::Migration
  def self.up
    create_table :athletes do |t|
      t.string :name
      t.string :surname
      t.datetime :dob
      t.string :club
      t.string :street
      t.string :city
			t.integer :zipcode
      t.integer :sex

			t.references :meeting

      t.timestamps
    end
  end

  def self.down
    drop_table :athletes
  end
end
