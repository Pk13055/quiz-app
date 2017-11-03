class AddGenreToSubgenres < ActiveRecord::Migration[5.1]
  def change
    add_reference :subgenres, :genre, foreign_key: true
  end
end
