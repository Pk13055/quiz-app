class AddQuizToEvent < ActiveRecord::Migration[5.1]
  def change
    add_reference :events, :quiz, foreign_key: true
  end
end
