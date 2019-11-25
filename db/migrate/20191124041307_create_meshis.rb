class CreateMeshis < ActiveRecord::Migration[5.0]
  def change
    create_table :meshis do |t|
      t.string :name, null: false
      t.string :image, null: false
      t.index :name, unique: true
      t.timestamps
    end
  end
end