class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :desire_id
      t.text :notetext

      t.timestamps
    end
  end
end
