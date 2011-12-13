class ResourceView < ActiveRecord::Base
  
  belongs_to :part
  
  validates :resource_url, :presence => true
  
  
end
