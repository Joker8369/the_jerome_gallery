class AddInfosToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :story, :string
  end
end
