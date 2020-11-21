class CreatePens < ActiveRecord::Migration[6.0]
  def change
    create_table :pens do |t|
      t.string :name
      t.string :condition

      t.timestamps
    end
  end
end
