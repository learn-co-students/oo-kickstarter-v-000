# When a Backer instance is initialized, it should be initialized with a @backed_projects variable set to an empty array.
# Instances of the Backer class should have an attr_accessor for backed projects so that projects can be added to a
# backer's list and so that the backer can report on the projects they back.
require 'pry'

class Backer
  attr_accessor :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def name
    @name
  end

  # accepts a Project as an argument and stores it in a backed_projects array
  # also adds the backer to the project's backers array
  def back_project(project)
    @backed_projects << project
    project.backers << self
  end

end
