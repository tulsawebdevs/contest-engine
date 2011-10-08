class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :title
      t.text :description
      t.string :image
      t.string :proposal
      t.integer :votes
      t.boolean :approval
      t.integer :contest_id

      t.timestamps
    end
  end
end
