require 'pry'

class Backer
   
    attr_accessor :name, :backed_projects

    def initialize(name)
        @name = name
        @backed_projects = []
    end

    def back_project(project)
        @backed_projects << project
        #I don't understand the need for project.backers << self
        project.backers << self
    end
end
