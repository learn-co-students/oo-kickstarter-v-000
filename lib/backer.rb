require 'pry'
class Backer

  attr_accessor :name, :project

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def backed_projects
    @backed_projects
  end

  def back_project(project)
    #binding.pry
    @backed_projects << project
    project.backer = self unless project.backer == self
    # add the backer to the project's backers array 
    project.add_backer(self) 
  end

end
