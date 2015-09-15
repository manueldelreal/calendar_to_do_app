class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.string :title
      t.string :description
      t.datetime :shedule_date
      t.timestamps null: false
    end
  end
end
