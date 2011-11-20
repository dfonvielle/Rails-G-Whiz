class CreateEzpieces < ActiveRecord::Migration
  def change
    create_table :ezpieces do |t|
      t.string :ezname
      t.boolean :ezcontroller
      t.boolean :ezmodel
      t.boolean :ezview
      t.boolean :ezdb
      t.boolean :ezseed
      t.text :ezattributes
      t.text :ezresources
      t.text :ezrelationships
      t.integer :ezproject_id

      t.timestamps
    end
  end
end
