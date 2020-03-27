class CreateHomes < ActiveRecord::Migration[6.0]
  def change
    create_table :homes do |t|
      t.string :name
      t.string :link
      t.string :image

      t.timestamps
    end
  end
end
