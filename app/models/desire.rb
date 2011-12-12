class Desire < ActiveRecord::Base
  
  belongs_to :project
  has_one :note
  
  scope :user_stories, where(:desire_type => "User Stories")
  scope :business_logic, where(:desire_type => "Business Logic")
  
  def hasnotes?
    self.notes.count > 0
  end
  
  
end
