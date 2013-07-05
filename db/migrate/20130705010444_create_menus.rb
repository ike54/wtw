class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :section
      t.string :item
      t.string :discription
      t.float :price

      t.timestamps
    end
  end
end
