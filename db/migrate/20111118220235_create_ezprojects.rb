class CreateEzprojects < ActiveRecord::Migration
  def change
    create_table :ezprojects do |t|
      t.integer :ezuser_id
      t.string :ezname
      t.string :ezmvp
      t.text :ezbuslogic
      t.text :ezuserstories

      t.timestamps
    end
  end
end
