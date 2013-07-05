class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.string :section
      t.string :item
      t.string :description
      t.string :price

      t.timestamps
    end
  end
end
