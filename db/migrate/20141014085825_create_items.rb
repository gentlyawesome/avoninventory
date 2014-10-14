class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.text :description
      t.integer :quantity
      t.integer :user_id

      t.timestamps
    end
  end
end
