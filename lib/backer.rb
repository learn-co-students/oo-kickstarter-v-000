require 'pry'

class Backer
  
  attr_accessor :name, :backed_projects, :project
  
  @@backed_projects = []
  
  def initialize(name)
    @name = name
  end
  
  def back_project(project)
    @@backed_projects << project
    if project.backers.none? { |backers| backers == self }
      project.add_backer(self)
    end
  end
  
  def backed_projects
    @@backed_projects
  end

  
end