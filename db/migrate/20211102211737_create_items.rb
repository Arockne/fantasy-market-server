class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :type
      t.text :desc
      t.integer :pounds
      t.integer :cost
      t.belongs_to :shop, foreign_key: true
      t.timestamps
    end
  end
end
