class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.references :category, null: true, foreign_key: true
      t.string :name, null: false

      t.timestamps
    end
  end
end
