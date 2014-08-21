class CreatePostags < ActiveRecord::Migration
  def change
    create_table :postags do |t|
    	t.references :post
    	t.references :tag
      t.timestamps
    end
  end
end
