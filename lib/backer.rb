require 'pry'
class Backer
  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project_object)
    if @backed_projects.include?(project_object) == false
       @backed_projects << project_object
    end 
    project_object.add_backer(self)
    #binding.pry
  end

end
