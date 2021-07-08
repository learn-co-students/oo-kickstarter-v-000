class Backer
    attr_accessor :name, :project
    @@backed_projects = []
  
    def initialize(name)
        @name = name
    end
    
    def back_project(project)
        project.backers << self
        @@backed_projects << project
        
    end   
    
    def backed_projects
        @@backed_projects
    end    
    
       
end    
