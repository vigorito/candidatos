class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :titulo
      t.text :texto
      t.references :user, index: true
      t.references :candidato, index: true

      t.timestamps
    end
  end
end
