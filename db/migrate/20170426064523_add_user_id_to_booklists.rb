class AddUserIdToBooklists < ActiveRecord::Migration[5.0]
  def change
    add_column :booklists, :user_id, :integer
  end
end
