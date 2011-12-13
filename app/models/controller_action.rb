class ControllerAction < ActiveRecord::Base
  
  belongs_to :part
  belongs_to :resource_view
  
  validates :controller_method, :presence => true
  
end
