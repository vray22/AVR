class CreateMenuitems < ActiveRecord::Migration[5.2]
  def change
    create_table :menuitems do |t|
      t.string :name
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
