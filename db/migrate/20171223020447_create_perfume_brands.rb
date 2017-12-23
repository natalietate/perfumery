class CreatePerfumeBrands < ActiveRecord::Migration[5.1]
  def change
    create_table :perfume_brands do |t|
      t.references :perfume, index: true, foreign_key: true
      t.references :brand, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
