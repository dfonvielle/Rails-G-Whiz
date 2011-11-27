class AddDesireIdToEzprojects < ActiveRecord::Migration
  def change
    
   add_column :ezprojects, :desire_id, :integer
   rename_column :ezprojects, :ezname, :name
   rename_column :ezprojects, :ezmvp, :mvp
    
  end
end


