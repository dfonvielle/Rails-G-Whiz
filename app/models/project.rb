class Project < ActiveRecord::Base
  
  belongs_to :user
  
  has_many :desires
  
  has_many :parts



  
  
end
