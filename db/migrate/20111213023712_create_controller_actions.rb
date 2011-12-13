class CreateControllerActions < ActiveRecord::Migration
  def change
    create_table :controller_actions do |t|
      t.integer :id
      t.integer :part_id
      t.string :controller_method
      t.integer :resource_view_id

      t.timestamps
    end
  end
end
