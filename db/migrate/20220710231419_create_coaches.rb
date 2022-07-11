class CreateCoaches < ActiveRecord::Migration[6.1]
  def change
    create_table :coaches do |t|
      t.string :name
      t.string :bio
      t.string :image_coach

      t.timestamps
    end
  end
end
