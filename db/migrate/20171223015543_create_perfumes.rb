class CreatePerfumes < ActiveRecord::Migration[5.1]
  def change
    create_table :perfumes do |t|
      t.string :perfume_name
      t.string :size
      t.integer :rating
      t.text :description
      t.string :season
      t.belongs_to :brand, index: true


      t.timestamps
    end
  end
end
