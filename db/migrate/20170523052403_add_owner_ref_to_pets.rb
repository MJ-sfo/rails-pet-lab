class AddOwnerRefToPets < ActiveRecord::Migration[5.1]
  def change
    # add_foreign_key :pets, :owner
    add_reference :pets, :owner, index: true, foreign_key: true
  end
end
