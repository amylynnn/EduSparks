class CreateAnsweredQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :answered_questions do |t|
      t.references :result, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :user_answer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
