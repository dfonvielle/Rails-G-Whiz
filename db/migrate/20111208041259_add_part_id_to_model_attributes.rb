class AddPartIdToModelAttributes < ActiveRecord::Migration
  
  def change
    
    add_column :model_attributes, :part_id, :integer
    
  end

end
