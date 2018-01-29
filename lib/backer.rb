require 'pry'

class Backer
   attr_accessor :backed_projects, :name
   
    def initialize(name)
        @name = name
        @backed_projects = []  
    end
    
    def all_backed_projects
        self.backed_projects
    end
    
    def back_project(project)
        self.all_backed_projects << project
        # binding.pry
        project.backers << self
    end
    
    
end