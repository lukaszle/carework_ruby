class CreateKontos < ActiveRecord::Migration
  def change
    create_table :kontos do |t|
      t.integer :id
      t.string :konto
      t.references :klient, index: true

      t.timestamps
    end
  end
end
