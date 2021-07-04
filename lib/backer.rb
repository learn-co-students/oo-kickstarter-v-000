require 'pry'

class Backer
  attr_accessor :name, :backed_projects
  attr_reader :project, :backers

  def initialize(name)
    @name = name
    @backed_projects = []
  end


  def back_project(project)
    # binding.pry
    self.backed_projects << project
    project.backers << self
  end


end
