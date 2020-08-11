class CreateBikes < ActiveRecord::Migration[6.0]
  def change
    create_table :bikes do |t|
      t.integer :id
      t.string :type
      t.string :name
      t.integer :miles
      t.integer :user_id

      t.timestamps
    end
  end
end
