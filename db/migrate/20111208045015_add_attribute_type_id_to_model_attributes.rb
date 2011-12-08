class AddAttributeTypeIdToModelAttributes < ActiveRecord::Migration
  
  def change
    
    add_column :model_attributes, :attribute_type_id, :integer
  
  end
end
