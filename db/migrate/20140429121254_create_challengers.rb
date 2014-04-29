class CreateChallengers < ActiveRecord::Migration
  def change
    create_table :challengers do |t|
      t.string :username
      t.string :password
      t.string :name
      t.string :email
      t.string :interests

      t.timestamps
    end
  end
end
