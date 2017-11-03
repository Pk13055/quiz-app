class RemoveSubgenreFromQuiz < ActiveRecord::Migration[5.1]
  def change
    remove_column :quizzes, :subgenre, :string
  end
end
