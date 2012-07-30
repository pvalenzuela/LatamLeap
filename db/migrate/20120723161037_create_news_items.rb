class CreateNewsItems < ActiveRecord::Migration
  def change
    create_table :news_items do |t|
      t.string :title
      t.string :author
      t.text :content
      t.text :abstract

      t.timestamps
    end
  end
end
