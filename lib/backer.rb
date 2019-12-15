require 'pry'

class Backer
  attr_reader :name

  def initialize(name)
    @name = name
    @backed_projects = []
    # binding.pry
  end

  def backed_projects
    @backed_projects
  end

  def back_project(project)
    backed_projects << project
    project.backers << self
    # binding.pry
  end

end
