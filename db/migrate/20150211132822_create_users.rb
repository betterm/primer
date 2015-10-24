class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.boolean :is_admin
      t.string :name
      t.string :email

      t.timestamps null: false
    end
  end
end
