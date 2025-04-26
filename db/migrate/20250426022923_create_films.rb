class CreateFilms < ActiveRecord::Migration[7.1]
  def change
    create_table :films do |t|
      t.string :title
      t.date :screening_date
      t.string :venue
      t.string :status

      t.timestamps
    end
  end
end
