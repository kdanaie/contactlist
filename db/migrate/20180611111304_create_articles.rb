class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :description
      t.integer :position
      t.integer :status
      t.timestamps
    end
  end
end
