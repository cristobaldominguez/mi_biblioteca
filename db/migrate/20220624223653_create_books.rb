class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.string :author
      t.integer :status, default: 0
      t.datetime :borrowed_at
      t.datetime :returned_at

      t.timestamps
    end
  end
end
