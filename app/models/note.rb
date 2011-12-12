class Note < ActiveRecord::Base
  
  belongs_to :desire
  belongs_to :part
  
end
