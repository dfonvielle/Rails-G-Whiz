class Project < ActiveRecord::Base
  
  belongs_to :user
  
  has_many :desires
  
  has_many :parts
  
  has_many :resource_views

  validates :name, :presence => true
  
  validates :mvp, :presence => true

  
  
end
