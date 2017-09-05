require 'pry'

class Backer

  attr_accessor :backed_projects
  attr_reader :name

  def initialize(name) #new takes a name on initialization
    @name = name
    @backed_projects = []
  end

  def back_project(project) #accepts a Project as an argument and stores it in a backed_projects array, also adds the backer to the project's backers array
    self.backed_projects << project
    project.backers << self
  end

end
