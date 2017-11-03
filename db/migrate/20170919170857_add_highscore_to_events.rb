class AddHighscoreToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :highscore, :decimal
  end
end
