class AddNameToComentario < ActiveRecord::Migration[6.0]

  def change
    add_column :comentarios, :name, :string
  end
end
