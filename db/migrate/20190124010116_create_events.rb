class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.time :start_time
      t.time :end_time
      t.date :date

      t.timestamps
    end
  end
end
