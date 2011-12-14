class ResourceView < ActiveRecord::Base
  
  belongs_to :part
  has_many :controller_actions
  
  validates :resource_url, :presence => true
  
  # scope :part_conventions, where(:part_id => ResourceView.part.id)
  # scope :current_project_views, where(? => ?)
  
  
end
