require 'pry'

class Backer
  attr_reader :name, :backed_projects
  # Since backed_projects is an array you can add elements
  # but not modify its value.

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    backed_projects << project # Shove the project object into the backed_projects instance variable.
    project.backers << self # Using .backers you shove the object itself into the @backers project instance variable.
  end
end
