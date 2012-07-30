class AddDetailsToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :name
      t.string :company_name
      t.string :position
      t.string :location
      t.references :stage
      t.integer :revenues
      t.text :team
      t.text :role
      t.text :status 
    end
  end
end
