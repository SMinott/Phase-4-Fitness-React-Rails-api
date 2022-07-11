class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :image_client
      t.string :email
      t.boolean :member
      t.float :fee
      t.string :password_digest

      t.timestamps
    end
  end
end
