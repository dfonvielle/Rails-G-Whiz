class Project < ActiveRecord::Base
  
  belongs_to :user
  
  has_many :desires
  
  has_many :parts
  
  has_many :resource_views
  
  has_many :model_associations

  validates :name, :presence => true
  
  validates :mvp, :presence => true



def achievement_message
  
  if @desires.blank?
    
    "Achievement: Congratulations! You've identified your MVP (minimum viable product) which is what you want to achieve overall."  
    
  elsif @parts.blank?
   
    "Achievement: Congratulations! You've entered user stories which helps clarify what you want to achieve with your app step by step. It also provides a natural checklist of things to do to create your app. And it gives you a sense of what 'things' you're dealing with in your app. So it's an important, helpful step that kills a lot of birds with one stone!"
    
  elsif @parts.count == 1
    
    "Achievement: Congratulations! You have identified a part of your rails app. Now you can identify even more information about it in your M-V-C View... Which you just unlocked."
         
  else
    
    "Achievement: no achievement message"
  
  end
  
end



def priority_message
  
  if @desires.blank?
    
    "Priority: Enter user stories that relate to your MVP so that you'll know what you specifically want to achieve with your rails app."
    
  elsif @parts.blank?
  
    "Priority: Use the information in your user stories to identify the 'things' (Project Parts) that your app will deal with and that will bring your app to life. (Ex: Sessions, Houses, Pages, etc.)"
  
  elsif @parts.count == 1
    
    "Priority: Create a clearer sense of your project parts in your M-V-C view. (And for now: create a new part so that you get a new 'achievement' message.)"
    
  else 
    
    "Priority: Develop an awesome rails app that you and others enjoy using."
       
  end
  
end



def unlocked_message
    
  if @parts.blank?
  
    "Unlocked: 'Project Parts' has been unlocked! Now you can identify the different parts of your rails app (inspired by your user stories) whenever you're ready. You can also specify what roles those parts will play (controller, model, view, and whether seeded."
    
  elsif @parts.count == 1
    
    "Unlocked: 'M-V-C View' has been unlocked! This is a listing of your Models-Views-Controllers. As you identify your parts as either models, views, or controllers, they will appear in this view, and you can include even more relevant information about your parts here. (Ex: the attributes of a model.)"
  
  else
    
    "Unlocked: no unlocked message"
        
  end

  
end





 
end
