class AddDescriptionToLists < ActiveRecord::Migration[7.0]
  def change
    add_column :lists, :description, :string
  end
end
