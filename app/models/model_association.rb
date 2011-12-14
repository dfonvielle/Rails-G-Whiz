class ModelAssociation < ActiveRecord::Base
  
  belongs_to :association_type
  belongs_to :project
  
  belongs_to :primary_model,
              :class_name => "Part",
              :foreign_key => "primary_model_id"
              
  belongs_to :secondary_model,
              :class_name => "Part",
              :foreign_key => "secondary_model_id"
    
  
end
