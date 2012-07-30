class FocusesUsers < ActiveRecord::Migration
  def change
    create_table :focuses_users do |t|
      t.references :focus
      t.references :user
    end
  end
end
