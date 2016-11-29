class CreateKlients < ActiveRecord::Migration
  def change
    create_table :klients do |t|
      t.string :imie
      t.string :nazwisko
      t.string :kid
      t.boolean :blad
      t.integer :id

      t.timestamps
    end
  end
end
