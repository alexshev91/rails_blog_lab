class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :guest_name
      t.string :content
      t.references :post, index: true

      t.timestamps
    end
  end
end
