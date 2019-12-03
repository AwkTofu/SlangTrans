class CreateDefinitions < ActiveRecord::Migration[6.0]
  def change
    create_table :definitions do |t|
      t.belongs_to :slang, null: false, foreign_key: true
      t.string :mandarin
      t.string :english
      t.string :german
      t.string :uyghur

      t.timestamps
    end
  end
end
