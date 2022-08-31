class CreateStores < ActiveRecord::Migration[6.1]
  def change
    create_table :stores do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.string :address, null: false
      t.integer :phone, null: false
      t.string :image, null: false
      t.string :open_time, null: false, default: "8h00-22h00"
      t.integer :status, null: false, default: 0

      t.timestamps
    end
  end
end
