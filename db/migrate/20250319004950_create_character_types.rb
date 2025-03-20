class CreateCharacterTypes < ActiveRecord::Migration[8.0]
  def change
    create_table :character_types do |t|
      t.string :name
      t.text :description
      t.integer :power

      t.timestamps
    end
  end
end
