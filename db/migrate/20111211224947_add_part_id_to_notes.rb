class AddPartIdToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :part_id, :integer
  end
end
