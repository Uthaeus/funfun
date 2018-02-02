class CreateProblems < ActiveRecord::Migration[5.1]
  def change
    create_table :problems do |t|
      t.string :title
      t.string :description
      t.text :body

      t.timestamps
    end
  end
end
