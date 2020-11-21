class CreatePigs < ActiveRecord::Migration[6.0]
  def change
    create_table :pigs do |t|
      t.string :name
      t.boolean :dirty
      t.string :friend
      t.integer :age
      t.references :pen, null: false, foreign_key: true

      t.timestamps
    end
  end
end
