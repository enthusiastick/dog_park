class CreatePairings < ActiveRecord::Migration

  def up
    create_table :pairings do |t|
      t.integer :owner_id
      t.integer :dog_id
    end
  end

  def down
    drop_table :pairings
  end

end
