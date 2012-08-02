class AddDetailsToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.string :name
      t.string :company_name
      t.string :position
      t.string :location
      t.references :stage
      t.integer :revenues
      t.text :team
      t.references :role
      t.text :status
      t.has_attached_file :image
    end
  end

  def self.down
    drop_attached_file :news_items, :image
  end

end
