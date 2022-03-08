class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :name
      t.string :review
      t.decimal :price
      t.string :languaje
      t.integer :number_pages

      t.timestamps
    end
    add_reference :books, :author, foreign_key: true
    add_reference :books, :gender, foreign_key: true
  end
end
