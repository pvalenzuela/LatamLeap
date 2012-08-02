class CreateUserRoles < ActiveRecord::Migration
  def change
    create_table :user_roles do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
    
    UserRole.create :name => 'active',
                    :description => 'Can see newsItem'
    UserRole.create :name => 'editor',
                    :description => 'Can add, del and edit new newsItem'
  end
end
