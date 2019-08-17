require 'pry'

class Backer

  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    #accepts a Project as an argument and stores it in a backed_projects array
    #also adds the backer (self) to the project\'s backers array
    @backed_projects << project
    project.backers << self
  end

end
