require 'pry'
class Backer

  attr_accessor :backed_projects, :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    project.backers << self # project is the object of my Project class. Accessing my @backer attribute for this object.
    # Shoveling my backer object to the array i.e. self
  end

end
