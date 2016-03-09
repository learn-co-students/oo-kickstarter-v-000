class Backer
  attr_accessor :name, :backed_projects

  def initialize(name="Bob Barker")
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    project.backers << self
  end

  #def backed_projects
    #@backed_projects
  #end


end