class RenameTiteColumnToLists < ActiveRecord::Migration[6.1]
  def change
    rename_column :Lists, :tite, :title
  end
end
