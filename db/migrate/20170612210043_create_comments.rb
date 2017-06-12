class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.references :post, index: true
      # t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_foreign_key :comments, :posts
  end
end
