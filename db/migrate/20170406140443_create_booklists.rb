class CreateBooklists < ActiveRecord::Migration[5.0]
  def change
    create_table :booklists do |t|
      t.string :ISBN
      t.string :genre
      t.string :title
      t.string :author
      t.integer :pages
      t.integer :year

      t.timestamps
    end
  end
end
