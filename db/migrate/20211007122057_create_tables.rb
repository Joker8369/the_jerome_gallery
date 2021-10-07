class CreateTables < ActiveRecord::Migration[6.1]
  def change
    create_table :tables do |t|
      t.string :name
      t.string :description
      t.string :author

      t.timestamps
    end
  end
end
