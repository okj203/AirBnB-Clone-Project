class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :body, null: false
      t.date :date, null: false
      t.integer :author_id, null: false
      t.integer :spot_id, null: false

      t.timestamps
    end
    add_index :reviews, :spot_id
    add_index :reviews, :author_id
  end
end
