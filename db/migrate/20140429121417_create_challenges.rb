class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :title
      t.string :description
      t.date :start_date
      t.date :end_date
      t.string :interests
      t.integer :challenger_id

      t.timestamps
    end
  end
end
