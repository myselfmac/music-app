class CreateHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :histories do |t|
      t.integer :userid
      t.string :artistname

      t.timestamps
    end
  end
end
