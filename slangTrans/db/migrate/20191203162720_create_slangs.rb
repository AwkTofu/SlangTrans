class CreateSlangs < ActiveRecord::Migration[6.0]
  def change
    create_table :slangs do |t|
      t.string :phrase
      t.belongs_to :user, null: false, foreign_key: true
      t.string :origin

      t.timestamps
    end
  end
end
