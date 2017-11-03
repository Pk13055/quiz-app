class AddCorrectkeyToAnswer < ActiveRecord::Migration[5.1]
  def change
    add_column :answers, :correctkey, :boolean
  end
end
