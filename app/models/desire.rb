class Desire < ActiveRecord::Base
  
  belongs_to :project
  
  scope :user_stories, where(:desire_type => "User Stories")
  scope :business_logic, where(:desire_type => "Business Logic")
  
  
end
