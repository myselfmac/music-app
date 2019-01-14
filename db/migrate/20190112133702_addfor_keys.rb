class AddforKey < ActiveRecord::Migration[5.2]
  def change
  	add_foreign_key :userid, :user
  end
end
