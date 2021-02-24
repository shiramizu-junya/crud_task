class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :comment, null: false
      t.references :post, foreign_key: true, null: false, index: true

      t.timestamps
    end
  end
end
