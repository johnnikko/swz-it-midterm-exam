class AddUserColumnInDisaster < ActiveRecord::Migration[5.2]
  def change
    add_reference(:disasters, :user,index: true)
  end
end
