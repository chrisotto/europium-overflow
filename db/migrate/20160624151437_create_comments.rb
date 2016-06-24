class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content, presence: true
      t.integer :user_id, presence: true
      t.references :commentable, polymorphic: true, presence: true, index: true

      t.timestamps(null: false)
    end
  end
end
