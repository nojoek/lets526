class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.boolean :settimeorloc
      t.string :finalloc
      t.time :finaltime
      t.integer :user_id

      t.timestamps
    end
  end
end
