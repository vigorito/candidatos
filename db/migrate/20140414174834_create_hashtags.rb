class CreateHashtags < ActiveRecord::Migration
  def change
    create_table :hashtags do |t|
      t.string :nome
      t.string :link
      t.references :post, index: true

      t.timestamps
    end
  end
end
