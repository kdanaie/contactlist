class AddTypeStatusToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :type, :integer
    add_column :articles, :status, :integer
  end
end
