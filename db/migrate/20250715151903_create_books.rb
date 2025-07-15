class CreateBooks < ActiveRecord::Migration[8.0]
  def change
    create_table :books do |t|
      t.string :book_name
      t.date :book_release_date
      t.integer :copies_sold

      t.timestamps
    end
  end
end
