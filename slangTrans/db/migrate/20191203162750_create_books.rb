class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :url
      t.string :img

      t.timestamps
    end
  end
end
