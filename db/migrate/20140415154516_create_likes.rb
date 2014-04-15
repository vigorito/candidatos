class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.boolean :valor
      t.references :post, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
