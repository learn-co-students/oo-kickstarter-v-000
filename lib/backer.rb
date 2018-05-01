require 'pry'

class Backer
  attr_accessor :name
  attr_writer :backed_projects

  def backed_projects
    @backed_projects
  end  

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
  #  binding.pry
    @backed_projects << project
    project.backers << self
  end
end
