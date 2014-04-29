class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.string :relationship_type
      t.integer :user_id
      t.integer :challenger_id

      t.timestamps
    end
  end
end
