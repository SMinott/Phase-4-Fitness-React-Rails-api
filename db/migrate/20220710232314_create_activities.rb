class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.string :event
      t.string :description
      t.string :location
      t.string :image_activity
      t.belongs_to :coach, null: false, foreign_key: true

      t.timestamps
    end
  end
end
