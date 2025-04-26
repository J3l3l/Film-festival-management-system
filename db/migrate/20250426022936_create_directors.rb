class CreateDirectors < ActiveRecord::Migration[7.1]
  def change
    create_table :directors do |t|
      t.string :name
      t.string :nationality
      t.integer :film_count
      t.string :relationship_status

      t.timestamps
    end
  end
end
