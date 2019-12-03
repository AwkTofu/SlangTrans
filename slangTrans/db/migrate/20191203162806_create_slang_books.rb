class CreateSlangBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :slang_books do |t|
      t.belongs_to :slang, null: false, foreign_key: true
      t.belongs_to :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
