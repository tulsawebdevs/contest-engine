class CreateContests < ActiveRecord::Migration
  def change
    create_table :contests do |t|
      t.string :title
      t.text :description
      t.string :pdf
      t.datetime :start_date
      t.datetime :end_date
      t.integer :sponsor_id

      t.timestamps
    end
  end
end
