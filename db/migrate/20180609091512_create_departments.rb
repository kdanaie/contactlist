class CreateDepartments < ActiveRecord::Migration[5.2]
  def change
    create_table :departments do |t|
      t.string :name
      t.string :shortname
      t.string :link
      t.text :description
      t.integer :position
      t.integer :status

      t.timestamps
    end
  end
end
