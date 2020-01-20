require 'pry'

class Backer
  
  attr_accessor :name, :backed_projects

  def initialize(name_of_backer)
    @name = name_of_backer
    @backed_projects = []
  end
  
  def back_project(project_instance)
    @backed_projects << project_instance
    project_instance.backers << self
  end
  
end