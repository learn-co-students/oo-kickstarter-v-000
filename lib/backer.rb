require 'pry'
class Backer

  attr_accessor :backed_projects, :name

  def initialize(name)
    @backed_projects = []
    @name = name
  end  

  def back_project(project_name)
    backed_projects << project_name
    project_name.backers << self
  end

end