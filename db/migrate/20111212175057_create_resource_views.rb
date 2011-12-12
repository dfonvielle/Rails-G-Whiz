class CreateResourceViews < ActiveRecord::Migration
  def change
    create_table :resource_views do |t|
      t.integer :part_id
      t.string :resource_url
      t.string :description

      t.timestamps
    end
  end
end
