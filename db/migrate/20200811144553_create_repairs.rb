class CreateRepairs < ActiveRecord::Migration[6.0]
  def change
    create_table :repairs do |t|
      t.integer :bike_id
      t.string :repair_type
      t.integer :miles
      t.string :description

      t.timestamps
    end
  end
end
