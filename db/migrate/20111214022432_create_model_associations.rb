class CreateModelAssociations < ActiveRecord::Migration
  def change
    create_table :model_associations do |t|
      t.integer :primary_model_id
      t.integer :secondary_model_id
      t.integer :project_id
      t.integer :association_type_id
      t.string :association_name

      t.timestamps
    end
  end
end
