class CreateBallots < ActiveRecord::Migration
  def change
    create_table :ballots do |t|
      t.string :loc1
      t.string :loc2
      t.string :loc3
      t.string :loc4
      t.time :time1
      t.time :time2
      t.time :time3
      t.time :time4
      t.integer :event_id
      t.integer :user_id

      t.timestamps
    end
  end
end
