class Part < ActiveRecord::Base
  
  belongs_to :project
  
  scope :app_models, where(:model_role => true)
  scope :app_controllers, where(:controller_role => true)
  scope :app_views, where(:view_role => true)
  
  validates :name, :presence => true
  validates :description, :presence => true
  
  
end
