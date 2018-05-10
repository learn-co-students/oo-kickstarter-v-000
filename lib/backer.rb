require "pry"
class Backer
  attr_accessor :name, :backed_projects, :backers

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    project.backers << self
  end
  #binding.pry
end
