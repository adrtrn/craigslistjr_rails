class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.integer :price
      t.string :email
      t.references :category, foreign_key: true

      t.timestamps null: false
    end
  end
end
