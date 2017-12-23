class CreateBrands < ActiveRecord::Migration[5.1]
  def change
    create_table :brands do |t|
      t.string :brand_name
      t.string :website
      
      t.timestamps
    end
  end
end
