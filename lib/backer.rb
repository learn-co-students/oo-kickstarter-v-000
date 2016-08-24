class Backer

  attr_accessor :name, :project

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def add_project
    #Backer knows his/her projects
  end

  def back_project(project_title)
    project = Project.new(project_title)
    @backed_projects << project
  end
end
