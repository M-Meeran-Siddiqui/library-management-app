class CreateBooks < ActiveRecord::Migration[8.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :isbn
      t.date :published_date
      t.string :genre
      t.boolean :available
      t.timestamps
    end
  end
end
