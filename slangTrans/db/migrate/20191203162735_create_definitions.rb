class CreateDefinitions < ActiveRecord::Migration[6.0]
  def change
    create_table :definitions do |t|
      t.belongs_to :slang, null: false, foreign_key: true
      t.string :language
      t.string :meaning

      t.timestamps
    end
  end
end
