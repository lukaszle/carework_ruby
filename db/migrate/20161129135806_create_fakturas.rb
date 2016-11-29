class CreateFakturas < ActiveRecord::Migration
  def change
    create_table :fakturas do |t|
      t.integer :id
      t.string :tytul
      t.date :data
      t.boolean :wyslana
      t.references :klient, index: true

      t.timestamps
    end
  end
end
