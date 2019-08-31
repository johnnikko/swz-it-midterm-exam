class CreateComment < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.belongs_to :disaster, index:true
      t.string :users_comment
      t.timestamps
    end
  end
end
