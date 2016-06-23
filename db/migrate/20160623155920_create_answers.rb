class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :user_id, presence: true
      t.integer :question_id, presence: true
      t.string :content, presence: true
    end
  end
end
