class Backer
   
   attr_accessor :backed_projects
   attr_reader :name
   
   def initialize(name)
       @name = name
       @backed_projects = []
   end
  
   def back_project(project)
      # raise AssosiationTypeMismatchError, "#{project.class} received Project expected" if !project.class.is_a?(Project)   	
   	   @backed_projects << project
   	   project.add_backer(self) unless project.backers.include?(self)
   	end 

end
