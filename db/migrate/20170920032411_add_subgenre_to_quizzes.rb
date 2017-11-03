class AddSubgenreToQuizzes < ActiveRecord::Migration[5.1]
  def change
    add_reference :quizzes, :subgenre, foreign_key: true
  end
end
