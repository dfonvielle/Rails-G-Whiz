class AddProjectIdToResourceViews < ActiveRecord::Migration
  def change
    add_column :resource_views, :project_id, :integer
  end
end
