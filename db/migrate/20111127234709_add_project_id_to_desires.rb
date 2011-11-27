class AddProjectIdToDesires < ActiveRecord::Migration
  
  def change
      
      add_column :desires, :project_id, :integer
      rename_column :desires, :user, :description
      rename_column :desires, :business, :desire_type     
    
  end
  
end
