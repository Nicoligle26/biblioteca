class CreateEditorials < ActiveRecord::Migration[6.1]
  def change
    create_table :editorials do |t|
      t.string :name
      t.string :city
      t.string :pages

      t.timestamps
    end
  end
end
