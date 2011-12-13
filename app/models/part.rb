class Part < ActiveRecord::Base
  
  belongs_to :project
  has_many :model_attributes
  has_many :resource_views
  has_many :controller_actions
  has_one :note
  
  scope :app_models, where(:model_role => true)
  scope :app_controllers, where(:controller_role => true)
  scope :app_views, where(:view_role => true)
  
  validates :name, :presence => true
  validates :description, :presence => true
  
  
end
