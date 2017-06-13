require 'pry'

class Backer
  attr_accessor :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def backed_projects
    @backed_projects
  end

  def back_project(project)
    @backed_projects << project
    b = Backer.new(name)
    project.add_backer(b)
    binding.pry
  end

  def add_project(project)
    @backed_projects << project
  end

end
