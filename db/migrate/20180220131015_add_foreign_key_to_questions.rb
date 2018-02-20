class AddForeignKeyToQuestions < ActiveRecord::Migration[5.1]
  def change
    add_reference :answers, :question, index:  true
  end
end
