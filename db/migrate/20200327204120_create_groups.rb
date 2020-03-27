class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.references :home, null: false, foreign_key: true
      t.references :person, null: false, foreign_key: true
      t.boolean :enabled

      t.timestamps
    end
  end
end
