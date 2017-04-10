class AddAttachmentImageToBooklists < ActiveRecord::Migration
  def self.up
    change_table :booklists do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :booklists, :image
  end
end
