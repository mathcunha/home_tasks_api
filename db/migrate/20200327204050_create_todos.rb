class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
      t.references :task, null: false, foreign_key: true
      t.references :person, null: false, foreign_key: true
      t.boolean :done
      t.timestamp :when
      t.timestamp :due

      t.timestamps
    end
  end
end
