class CreatePhases < ActiveRecord::Migration
  def change
    create_table :phases do |t|
      t.integer :contest_id
      t.text :title
      t.datetime :end_date

      t.timestamps
    end
  end
end
