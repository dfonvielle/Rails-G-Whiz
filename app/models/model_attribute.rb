class ModelAttribute < ActiveRecord::Base

  belongs_to :part
  belongs_to :attribute_type
  

  validates :name, :presence => true
  
  


end
