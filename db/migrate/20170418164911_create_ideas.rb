class CreateIdeas < ActiveRecord::Migration[5.0]
  def change
    create_table :ideas do |t|
      t.string :title
      t.text :text
      t.integer :members
      t.integer :likes

      t.timestamps
    end
  end
end
