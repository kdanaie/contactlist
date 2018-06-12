class CreateThenewsreporters < ActiveRecord::Migration[5.2]
  def change
    create_table :thenewsreporters do |t|

      t.timestamps
    end
  end
end
