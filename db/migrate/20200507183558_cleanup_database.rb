class CleanupDatabase < ActiveRecord::Migration[6.0]
  def change
    drop_table :comments
    drop_table :commentaries
    rename_table :comentarios, :comments
  end
end
