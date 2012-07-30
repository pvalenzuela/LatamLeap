class CreateFocuses < ActiveRecord::Migration
  def change
    create_table :focuses do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
    
    Focus.create :name => 'Hardware'
    Focus.create :name => 'Software'
    Focus.create :name => 'Wireless/Mobile Apps'
    Focus.create :name => 'Social/Professional Network'
    Focus.create :name => 'Clean/Renovable Energy & Technology'    
  end
end
