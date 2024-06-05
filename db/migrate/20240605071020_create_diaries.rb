class CreateDiaries < ActiveRecord::Migration[6.1]
  def change
    create_table :diaries do |t|
      t.string :title
      t.string :body
      t.integer "user_id"
      t.timestamps
    end
  end
end
