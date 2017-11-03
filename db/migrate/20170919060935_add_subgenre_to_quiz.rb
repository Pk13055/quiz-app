class AddSubgenreToQuiz < ActiveRecord::Migration[5.1]
  def change
    add_column :quizzes, :subgenre, :string
  end
end
