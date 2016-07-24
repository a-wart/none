class CreateFaucets < ActiveRecord::Migration[5.0]
  def change
    create_table :faucets do |t|
      t.string :link
      t.integer :timer
      t.string :reflink

      t.timestamps
    end
  end
end
