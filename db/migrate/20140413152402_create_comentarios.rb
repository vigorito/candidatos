class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.text :texto
      t.references :user, index: true
      t.references :post, index: true

      t.timestamps
    end
  end
end
