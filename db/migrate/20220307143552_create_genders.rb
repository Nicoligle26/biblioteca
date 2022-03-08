class CreateGenders < ActiveRecord::Migration[6.1]
  def change
    create_table :genders do |t|
      t.string :name

      t.timestamps
    end
    add_reference :genders, :editorial, foreign_key: true
  end
end
