class AddAttachmentImageToNewsItems < ActiveRecord::Migration
  def self.up
    change_table :news_items do |t|
      t.has_attached_file :image
    end
  end

  def self.down
    drop_attached_file :news_items, :image
  end
end
