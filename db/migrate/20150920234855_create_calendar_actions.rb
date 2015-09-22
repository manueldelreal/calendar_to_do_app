class CreateCalendarActions < ActiveRecord::Migration
  def change
    create_table :calendar_actions do |t|
      t.string :title
      t.string :description
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps null: false
    end
  end
end
