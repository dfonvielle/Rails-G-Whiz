class Project < ActiveRecord::Base
  
  belongs_to :user
  
  has_many :desires
  
  has_many :parts

# def coolnews
#   
#   if @desires.blank?
#     :message => "STEP 1: Enter user stories and business logic so that you'll know what you want to achieve with your rails app. In the next step, you'll identify parts of your rails app based off of the user stories and business logic that you enter."
#   else
#     :message => "Good job."  
#   end
#   
# end 
  
  
end
