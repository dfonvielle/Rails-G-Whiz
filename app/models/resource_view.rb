class ResourceView < ActiveRecord::Base
  
  belongs_to :part
  has_many :controller_actions
  
  validates :resource_url, :presence => true
  
  
end
