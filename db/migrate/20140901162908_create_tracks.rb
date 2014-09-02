class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :name
      t.string :description
      t.integer :user_id
      t.string :file_name

      t.timestamps
    end
  end
end
