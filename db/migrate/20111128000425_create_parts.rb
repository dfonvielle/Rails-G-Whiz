class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.integer :project_id
      t.string :name
      t.string :description
      t.boolean :controller_role
      t.boolean :model_role
      t.boolean :view_role
      t.boolean :seed_role

      t.timestamps
    end
  end
end
