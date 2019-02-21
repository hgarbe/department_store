class CreateShoes < ActiveRecord::Migration[5.2]
  def change
    create_table :shoes do |t|
      t.string :name
      t.text :body
      t.belongs_to :department, foreign_key: true

      t.timestamps
    end
  end
end
