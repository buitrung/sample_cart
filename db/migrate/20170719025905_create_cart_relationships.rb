class CreateCartRelationships < ActiveRecord::Migration[5.1]
  def change
    create_table :cart_relationships do |t|
      t.integer :cart_id
      t.integer :product_id
      t.integer :quantity

      t.timestamps
    end
  end
end
