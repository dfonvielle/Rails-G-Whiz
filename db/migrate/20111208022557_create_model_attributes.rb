class CreateModelAttributes < ActiveRecord::Migration
  def change
    create_table :model_attributes do |t|
      t.string :name
      t.string :type

      t.timestamps
    end
  end
end
