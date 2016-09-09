class CreateIdeas < ActiveRecord::Migration[5.0]
  def change
    create_table :ideas do |t|
      t.string :title
      t.string :body

      t.timestamps
    end
    add_index :users, :email
  end
end
