class CreateOwners < ActiveRecord::Migration

  def up
    create_table :owners do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
    end
  end

  def down
    drop_table :owners
  end

end
