require 'pry'

class Backer

    attr_accessor :name, :back_project, :project, :backer, :backers, :projects

  #  @backed_projects = [ ]
    #backed_projects should be an instance variable, not a class variable,
    #because as a class variable it would stand for only projects backed by every single backer

    def initialize(name)
        @name = name
        @backed_projects = [ ]
       # @project = project
       #don't need an @project, because a backer should be able to back more than one project
    end

    def back_project(project)
      #  self.project = Project.new(project).backer
      #  self.project = project

        project.backers << self
       @backed_projects << project
    end

    def backed_projects
        @backed_projects
    end

end