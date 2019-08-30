class CreateDisasters < ActiveRecord::Migration[5.2]
  def change
    create_table :disasters do |t|
      t.string :title
      t.text :description
      t.belongs_to :category, index: true
      t.timestamps
    end
  end
end
