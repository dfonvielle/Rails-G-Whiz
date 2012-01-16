# rake graph
task :graph => :environment do
  project = Project.first
  digraph do
    project.model_associations.each do |model_association|
      edge(model_association.primary_model.name, model_association.secondary_model.name)
    end
    
    save("project_first_associations", "png")
  end
end


# This works, showing controllers and their connections to models/model associations!!! Very cool...
task :graph_test => :environment do
  
  project = Project.first
  controllers = project.parts.app_controllers
  views = project.parts.app_views
  
  digraph do
    
    cluster"1" do
      
      label "Model Associations"
      
      colorscheme(:set3, 5)
      
      boxes << filled << c5
      # edge_attribs << green

      project.model_associations.each do |model_association|
      
        if model_association.association_type.name == "belongs_to"
          blue << edge(model_association.primary_model.name.singularize, model_association.secondary_model.name.singularize)      
        end
      
      end
  
      project.model_associations.each do |model_association|
      
        if model_association.association_type.name == "has_one"
          red << edge(model_association.secondary_model.name.singularize, model_association.primary_model.name.singularize)      
        end
      
      end  
    
      project.model_associations.each do |model_association|
      
        if model_association.association_type.name == "has_many"
          forestgreen << edge(model_association.secondary_model.name.singularize, model_association.primary_model.name.singularize)      
        end
      
      end
      
      project.model_associations.each do |model_association|
      
        if model_association.primary_model.controller_role.blank?
          c3 << node(model_association.primary_model.name.singularize) 
        elsif model_association.secondary_model.controller_role.blank?
          c3 << node(model_association.secondary_model.name.singularize) 
        end
      
      end
     
    end
    
    cluster"2" do
      
      label "Controllers"
      
      colorscheme(:set3, 5)
      
      boxes << filled << c5
        
      controllers.each do |controller|
        
        if controller.model_role?
          c5 << node(controller.name.pluralize)
        else
          c1 << node(controller.name.pluralize)
        end
        
        
        # project.model_associations.each do |model_association|
        # 
        #   if model_association.primary_model.name.singularize == controller.name.singularize
        #     c5 << node(controller.name.pluralize)
        #     edge(controller.name.pluralize, model_association.primary_model.name.singularize) 
        #   else
        #     c1 << node(controller.name.pluralize)     
        #   end
        # 
        # end
         
      end
      
    end
   
   # cluster"3" do 
   #   boxes
   #   label "Views"
   #   
   #   edge("A", "B")
   #   
   #   views.each do |view|
   #    edge(view.name)
   #   end
   #  
   # end
    
    save("graph_test", "png")
  end
end


# 
# # This works, showing controllers and their connections to models/model associations!!! Very cool...
# task :graph_test => :environment do
#   
#   project = Project.first
#   controllers = project.parts.app_controllers
#   views = project.parts.app_views
#   
#   digraph do
#     
#     cluster"1" do
#       
#       label "Model Associations"
#       
#       colorscheme(:set3, 5)
#       
#       boxes << filled << c5
#       # edge_attribs << green
# 
#       project.model_associations.each do |model_association|
#       
#         if model_association.association_type.name == "belongs_to"
#           blue << edge(model_association.primary_model.name.singularize, model_association.secondary_model.name.singularize)      
#         end
#       
#       end
#   
#       project.model_associations.each do |model_association|
#       
#         if model_association.association_type.name == "has_one"
#           red << edge(model_association.secondary_model.name.singularize, model_association.primary_model.name.singularize)      
#         end
#       
#       end  
#     
#       project.model_associations.each do |model_association|
#       
#         if model_association.association_type.name == "has_many"
#           forestgreen << edge(model_association.secondary_model.name.singularize, model_association.primary_model.name.singularize)      
#         end
#       
#       end
#      
#     end
#     
#     cluster"2" do
#       
#       label "Controllers"
#       
#       colorscheme(:set3, 5)
#       
#       boxes << filled << c5
#         
#       controllers.each do |controller|
#         
#         project.model_associations.each do |model_association|
# 
#           if model_association.primary_model.name.singularize == controller.name.singularize
#             edge(controller.name.pluralize, model_association.primary_model.name.singularize) 
#           else
#             node(controller.name.pluralize)     
#           end
# 
#         end
#          
#       end
#       
#     end
#    
#     
#     save("graph_test", "png")
#   end
# end

# # Will do a rake graph that includes reciprocals... and is lean as possible...
# task :graph_test => :environment do
#   
#   project = Project.first
#   project_again = Project.first
# 
#   
#   digraph do
#     
#     boxes << filled << lightblue
#     edge_attribs << lightblue
#     
#     
#     
# 
#     project.model_associations.each do |model_association|
#       
#       if model_association.association_type.name == "belongs_to"
#         
#         connected = [model_association.primary_model.name, model_association.secondary_model.name]
#         
#         project_again.model_associations.each do |comparison|
#           
#           inverted = [comparison.primary_model.name, comparison.secondary_model.name].reverse
#           
#           if connected == inverted
#             
#             if comparison.association_type.name == "has_many"
#               normal << edge(model_association.primary_model.name.singularize, model_association.secondary_model.name.singularize)
#             end
#             
#             if comparison.association_type.name == "has_one"
#               vee << edge(model_association.primary_model.name.singularize, model_association.secondary_model.name.singularize)
#             end
#             
#             
#           else
#             tee << edge(model_association.primary_model.name.singularize, model_association.secondary_model.name.singularize)      
#           end
#           
#         end
#              
#       end
#       
#     end
#     
#     save("graph_test", "png")
#   end
# end




# # Associate Models Colorfully; this WORKS!!! Gets all the arrows going... The catch is that all arrows are "normal"...
# # ...meaning that I do not take reciprocal has_many type into account and so on!!!
# task :graph_test => :environment do
#   
#   project = Project.first
#   parts = project.parts
#   controllers = project.parts.app_controllers
#   models = project.parts.app_models
#   views = project.parts.app_views
#   
#   digraph do
#     
#     boxes << filled << lightblue
#     edge_attribs << lightblue
# 
#     project.model_associations.each do |model_association|
#       
#       if model_association.association_type.name == "belongs_to"
#         edge(model_association.primary_model.name.singularize, model_association.secondary_model.name.singularize)      
#       end
#       
#     end
#     
#     save("graph_test", "png")
#   end
# end



# # This TECHNICALLY works; the only catch is they put all the Controllers, Models, Views on ONE LINE...
# # ...so some of the info doesn't get SHOWN. But the code works, at least...
# task :graph_test => :environment do
#   
#   project = Project.first
#   parts = project.parts
#   controllers = project.parts.app_controllers
#   models = project.parts.app_models
#   views = project.parts.app_views
#   
#   digraph do
#     
#     colorscheme(:set1, 3)
#     
#     cluster "1" do
#       label "Controllers"
#       node_attribs << triangle << filled << c1
#       edge_attribs << red
#       
#         controllers.each do |controller|
#           node("#{controller.name}")
#            
#         end
# 
#     end
# 
#     cluster "2" do
#       label "Models"
#       boxes << filled << c2
#       edge_attribs << blue
# 
#         models.each do |model|
#           node("#{model.name}")
#         end    
#         
#     end
#    
#     cluster "3" do
#       label "Views"
#       node_attribs << filled << c3
#       edge_attribs << green
#       
#         views.each do |view|
#           node("#{view.name}")
#         end
#       
#     end   
#     
#     save("graph_test", "png")
#   end
# end



# # OK!!! With this, I demonstrate different things you can do with clusters and how you can color them...
# # NOW, I just learn how to pass in my controllers, models, and views, and now I will have a way to see them conceptually!!!
# task :graph_test do
#   digraph do
#     
#     colorscheme(:set1, 3)
#     
#     cluster "1" do
#       label "Controllers"
#       node_attribs << triangle << filled << c1
#       edge_attribs << red
#         edge("A", "B")
#     end
# 
#     cluster "2" do
#       label "Models"
#       boxes << filled << c2
#       edge_attribs << blue
#         blue << edge("C","D")
#     end
#    
#     cluster "3" do
#       label "Views"
#       node_attribs << filled << c3
#       edge_attribs << green
#         node("E")
#         node("F")
#     end   
#     
#     save("graph_test", "png")
#   end
# end



# very cool! from AJA Hammerly example of color schemes... Creates red, blue, green, purple filled CIRCLES!!!
#FYI, my additional code of the GREEN EDGE ONLY creates a green edge between C and D! All other edges are black...
# So SPECIFY individual edges in different colors, I guess, if that's what I want to do... (Default edge color is black!)
# task :graph_test do
#   digraph do
#     node_attribs << filled
#     colorscheme(:set1, 4)
#     c1 << node("A")
#     c2 << node("B")
#     c3 << node("C")
#     c4 << node("D")
#     green << edge("A", "B", "C", "D")
#     save("graph_test", "png")
#   end
# end


# # Lesson here: assigning node attribs ovverrides previous attribs UNLESS you create distinct clusters! 
# # in this case, ONLY get blue, filled boxes for nodes
# # although you do get different edge colors (blue and green) as those are INDIVIDUALLY specified!!!
# task :graph_test do
#   digraph do
#     
#     cluster "1" do
#       label "Red Triangles, Not Filled"
#       node_attribs << triangle << red
#         red << edge("A", "B")
#     end
# 
#     cluster "2" do
#       label "Blue Boxes, Filled"
#       boxes << blue << filled
#         blue << edge("C","D")
#     end
#    
#     cluster "3" do
#       label "Green Circles"
#       node_attribs << green
#         green << edge("E","F")
#     end   
#     
#     save("graph_test", "png")
#   end
# end


# # rake graph_test
# task :graph_test do
#   digraph do
#     # your graph here
#     green << edge("a", "b")
#     
#     save("graph_test", "png")
#   end
# end


# # rake graph_test backup template... This is the basic TEMPLATE of my rake graph test duplicated just in case...
# task :graph_test do
#   digraph do
#     # your graph here
#     green << edge("a", "b")
#     
#     save("graph_test", "png")
#   end
# end

# # Ryan's graph_test that draws a GREEN arrow from node a DOWN to node b...
# task :graph_test do
#   digraph do
#     # your graph here
#     green << edge("a", "b")
#     
#     save("graph_test", "png")
#   end
# end